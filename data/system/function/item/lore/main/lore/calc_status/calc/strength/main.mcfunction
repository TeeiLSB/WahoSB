## POTATO BOOK

# potato bookの数をscoreに
 execute store result score #PotatoBook.Amount Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".Potato

# itemがweaponの場合 potatoの数*2 をあとでstrとStrに+してstorageに保存
    scoreboard players operation #PotatoBook.Weapon Temporary = #PotatoBook.Amount Temporary
        execute store result storage temp: temp_lore.Potato int 1 run scoreboard players operation #PotatoBook.Weapon Temporary *= #2 Constant

# storageからloreのtextを生成
execute if score #PotatoBook.Amount Temporary matches 1.. run \
     function system:item/lore/main/lore/calc_status/calc/strength/potato with storage temp: temp_lore
# potatoがついていない場合
 execute if score #PotatoBook.Amount Temporary matches 0 run \
 data modify storage temp: temp_lore.Potato set value ""

## REFORGE

# reforge Strがあるならそれを代入 ないなら""
execute if data entity @s SelectedItem.components."minecraft:custom_data".ReforgeStatus.Str run \
 function system:item/lore/main/lore/calc_status/calc/strength/reforge with entity @s SelectedItem.components."minecraft:custom_data".ReforgeStatus
execute unless data entity @s SelectedItem.components."minecraft:custom_data".ReforgeStatus.Str run \
 data modify storage temp: temp_lore.Reforge set value ""

## The Art of War
# あるならそれを代入 ないなら""
# aru
execute if data entity @s SelectedItem.components."minecraft:custom_data".Aow run \
 data modify storage temp: temp_lore.Aow set value " §6[+5]"
 execute if data entity @s SelectedItem.components."minecraft:custom_data".Aow run scoreboard players set #Aow Temporary 5
# nai
execute unless data entity @s SelectedItem.components."minecraft:custom_data".Aow run \
 data modify storage temp: temp_lore.Aow set value ""
 execute unless data entity @s SelectedItem.components."minecraft:custom_data".Aow run scoreboard players set #Aow Temporary 0


## 最終ダメージ計算
 execute store result score #BaseStr Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".Stats.Strength
 execute store result score #ReforgeStr Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".ReforgeStatus.Str
 execute store result score #StarAmount Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".Star
# 足す
 scoreboard players operation #BaseStr Temporary += #ReforgeStr Temporary
 scoreboard players operation #BaseStr Temporary += #Aow Temporary
 scoreboard players operation #BaseStr Temporary += #PotatoBook.Weapon Temporary

# dungeonダメージの計算用にとっておく
 scoreboard players operation #ForDungeonStr Temporary = #BaseStr Temporary

# starの倍率計算
# starごとに2%アップ
 # まずは倍率(2%~10%)+100を用意 (102~110)
 execute if score #StarAmount Temporary matches 1.. run scoreboard players operation #StarAmount_Copy Temporary = #StarAmount Temporary
 execute if score #StarAmount Temporary matches 1.. run scoreboard players operation #StarAmount_Copy Temporary *= #2 Constant
 execute if score #StarAmount Temporary matches 1.. run scoreboard players operation #CalcStar Temporary = #100 Constant
 execute if score #StarAmount Temporary matches 1.. run scoreboard players operation #CalcStar Temporary += #StarAmount_Copy Temporary
# かけてわる
 execute if score #StarAmount Temporary matches 1.. run scoreboard players operation #BaseStr Temporary *= #CalcStar Temporary
 execute if score #StarAmount Temporary matches 1.. run scoreboard players operation #BaseStr Temporary /= #100 Constant

 
 execute store result storage temp: temp_lore.Str int 1 run scoreboard players get #BaseStr Temporary
# おけ
 function system:item/lore/main/lore/calc_status/calc/strength/str with storage temp: temp_lore


## DungeonStr計算

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
# base Str * stat boost
 scoreboard players operation #ForDungeonStr Temporary *= #StatBoost Temporary
 scoreboard players operation #ForDungeonStr Temporary /= #100 Constant
 execute store result storage temp: temp_lore.DungeonStr int 1 run scoreboard players get #ForDungeonStr Temporary
# storageにdungeon statusを保存
 execute if entity @s[tag=InDungeon] run function system:item/lore/main/lore/calc_status/calc/strength/in_dungeon with storage temp: temp_lore
 execute unless entity @s[tag=InDungeon] run function system:item/lore/main/lore/calc_status/calc/strength/dungeon_str with storage temp: temp_lore

# おけ
 execute if entity @s[tag=InDungeon] run function system:item/lore/main/lore/calc_status/store/strength/dungeon with storage temp: temp_lore
 execute unless entity @s[tag=InDungeon] run function system:item/lore/main/lore/calc_status/store/strength/main with storage temp: temp_lore



