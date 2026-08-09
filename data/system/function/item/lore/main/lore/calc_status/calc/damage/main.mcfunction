## POTATO BOOK

# potato bookの数をscoreに
 execute store result score #PotatoBook.Amount Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".Potato

# itemがweaponの場合 potatoの数*2 をあとでDamageとDamageに+してstorageに保存
    scoreboard players operation #PotatoBook.Weapon Temporary = #PotatoBook.Amount Temporary
        execute store result storage temp: temp_lore.Potato int 1 run scoreboard players operation #PotatoBook.Weapon Temporary *= #2 Constant

# storageからloreのtextを生成
execute if score #PotatoBook.Amount Temporary matches 1.. run \
     function system:item/lore/main/lore/calc_status/calc/damage/potato with storage temp: temp_lore
# potatoがついていない場合
 execute if score #PotatoBook.Amount Temporary matches 0 run \
 data modify storage temp: temp_lore.Potato set value ""

## REFORGE

# reforge Damageがあるならそれを代入 ないなら""
execute if data entity @s SelectedItem.components."minecraft:custom_data".ReforgeStatus.Damage run \
 function system:item/lore/main/lore/calc_status/calc/damage/reforge with entity @s SelectedItem.components."minecraft:custom_data".ReforgeStatus
execute unless data entity @s SelectedItem.components."minecraft:custom_data".ReforgeStatus.Damage run \
 data modify storage temp: temp_lore.Reforge set value ""


## 最終ダメージ計算
 execute store result score #BaseDamage Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".Stats.BaseDamage
 execute store result score #ReforgeDamage Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".ReforgeStatus.Dmg
 execute store result score #StarAmount Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".Star
# 足す
 scoreboard players operation #BaseDamage Temporary += #ReforgeDamage Temporary
 scoreboard players operation #BaseDamage Temporary += #PotatoBook.Weapon Temporary

# dungeonダメージの計算用にとっておく
 scoreboard players operation #ForDungeonDamage Temporary = #BaseDamage Temporary

# starの倍率計算
# starごとに2%アップ
 # まずは倍率(2%~10%)+100を用意 (102~110)
 execute if score #StarAmount Temporary matches 1.. run scoreboard players operation #StarAmount_Copy Temporary = #StarAmount Temporary
 execute if score #StarAmount Temporary matches 1.. run scoreboard players operation #StarAmount_Copy Temporary *= #2 Constant
 execute if score #StarAmount Temporary matches 1.. run scoreboard players operation #CalcStar Temporary = #100 Constant
 execute if score #StarAmount Temporary matches 1.. run scoreboard players operation #CalcStar Temporary += #StarAmount_Copy Temporary
# かけてわる
 execute if score #StarAmount Temporary matches 1.. run scoreboard players operation #BaseDamage Temporary *= #CalcStar Temporary
 execute if score #StarAmount Temporary matches 1.. run scoreboard players operation #BaseDamage Temporary /= #100 Constant

 
 execute store result storage temp: temp_lore.Damage int 1 run scoreboard players get #BaseDamage Temporary
# おけ
 function system:item/lore/main/lore/calc_status/calc/damage/damage with storage temp: temp_lore


## DungeonDamage計算

# cata 50
 scoreboard players set #StatBoost Temporary 565
 ## star
 # max50%
 scoreboard players operation #StarAmount_Copy Temporary = #StarAmount Temporary
 scoreboard players operation #StarAmount_Copy Temporary *= #10 Constant
 scoreboard players operation #StatBoost Temporary += #StarAmount_Copy Temporary
# max 10%
 scoreboard players operation #StarAmount_Copy Temporary = #StarAmount Temporary
 scoreboard players operation #StarAmount_Copy Temporary *= #2 Constant
 scoreboard players operation #StatBoost Temporary += #StarAmount_Copy Temporary
# generals medalion
 scoreboard players operation #StatBoost Temporary += #5 Constant
#　最低保障
 scoreboard players operation #StatBoost Temporary += #1 Constant
# base Damage * stat boost
 scoreboard players operation #ForDungeonDamage Temporary *= #StatBoost Temporary
 scoreboard players operation #ForDungeonDamage Temporary /= #100 Constant
 execute store result storage temp: temp_lore.DungeonDamage int 1 run scoreboard players get #ForDungeonDamage Temporary
# storageにdungeon statusを保存
 execute if entity @s[tag=InDungeon] run function system:item/lore/main/lore/calc_status/calc/damage/in_dungeon with storage temp: temp_lore
 execute unless entity @s[tag=InDungeon] run function system:item/lore/main/lore/calc_status/calc/damage/dungeon_damage with storage temp: temp_lore

# おけ
 execute if entity @s[tag=InDungeon] run function system:item/lore/main/lore/calc_status/store/damage/dungeon with storage temp: temp_lore
 execute unless entity @s[tag=InDungeon] run function system:item/lore/main/lore/calc_status/store/damage/main with storage temp: temp_lore



