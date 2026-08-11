## POTATO BOOK

# potato bookの数をscoreに
 execute store result score #PotatoBook.Amount Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".Potato
 execute store result storage temp: temp_setting.Potato int 1 run scoreboard players operation #PotatoBook.Amount Temporary *= #2 Constant

## REFORGE
# reforge Strがあるならそれを代入 ないなら""
execute if data entity @s SelectedItem.components."minecraft:custom_data".ReforgeStatus.Dmg store result storage temp: temp_setting.Reforge int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".ReforgeStatus.Dmg

## 最終計算
 execute store result score #Base Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".Stats.BaseDamage
 execute store result score #Reforge Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".ReforgeStatus.Dmg
 execute store result score #StarAmount Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".Star
# 足す
 scoreboard players operation #Base Temporary += #Reforge Temporary
 scoreboard players operation #Base Temporary += #PotatoBook.Amount Temporary

# dungeonダメージの計算用にとっておく
 scoreboard players operation #ForDungeon Temporary = #Base Temporary

# starの倍率計算
# starごとに2%アップ
 # まずは倍率(2%~10%)+100を用意 (102~110)
 scoreboard players operation #StarAmount_Copy Temporary = #StarAmount Temporary
 scoreboard players operation #StarAmount_Copy Temporary *= #2 Constant
 scoreboard players operation #CalcStar Temporary = #100 Constant
 scoreboard players operation #CalcStar Temporary += #StarAmount_Copy Temporary
 scoreboard players operation #Base Temporary *= #CalcStar Temporary
 scoreboard players operation #Base Temporary /= #100 Constant
 
# storageに保存
 execute store result storage temp: temp_setting.Base int 1 run scoreboard players get #Base Temporary


## Dungeon 計算
# Base
 scoreboard players operation #StatBoost Temporary = @s DungeonStatBoost
# star
 execute unless entity @s[tag=InMasterDungeon] run function system:item/lore/main/lore/calc_status/calc/dungeon_star
 execute if entity @s[tag=InMasterDungeon] run function system:item/lore/main/lore/calc_status/calc/master_dungeon_star
  
# Base damage * stat boost
 scoreboard players operation #ForDungeon Temporary *= #StatBoost Temporary
 scoreboard players operation #ForDungeon Temporary /= #100 Constant
 execute store result storage temp: temp_setting.Dungeon int 1 run scoreboard players get #ForDungeon Temporary

# dungeonizeされてないitemたち
 execute if entity @s[tag=InDungeon] unless data entity @s SelectedItem.components."minecraft:custom_data".Dungeonized run data modify storage temp: temp_setting.Dungeon set from storage temp: temp_setting.Base


function system:item/lore/main/lore/calc_status/calc/damage/storage with storage temp: temp_setting
# potatoがついていない場合
 execute if score #PotatoBook.Amount Temporary matches 0 run data modify storage temp: temp_lore.Potato set value ""
# reforgeがない場合
 execute unless data entity @s SelectedItem.components."minecraft:custom_data".ReforgeStatus.Dmg run \
 data modify storage temp: temp_lore.Reforge set value ""
#dungeonizeされてない場合
 execute unless entity @s[tag=InDungeon] unless data entity @s SelectedItem.components."minecraft:custom_data".Dungeonized run data modify storage temp: temp_lore.Dungeon set value ""

# lore生成
 execute if entity @s[tag=InDungeon] if score #Base Temporary matches 1.. run function system:item/lore/main/lore/calc_status/store/damage/dungeon with storage temp: temp_lore
 execute unless entity @s[tag=InDungeon] if score #Base Temporary matches 1.. run function system:item/lore/main/lore/calc_status/store/damage/main with storage temp: temp_lore


scoreboard players operation @s[tag=!InDungeon] MainHand.Dmg = #Base Temporary
scoreboard players operation @s[tag=InDungeon] MainHand.Dmg = #ForDungeon Temporary
