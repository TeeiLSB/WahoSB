## REFORGE
# reforge Strがあるならそれを代入 ないなら""
execute if data block 0 0 0 Items[0].components."minecraft:custom_data".ReforgeStatus.Int store result storage temp: temp_setting.Reforge int 1 run data get block 0 0 0 Items[0].components."minecraft:custom_data".ReforgeStatus.Int

## Gemstone
 execute store result score #Gem_1 Temporary run data get block 0 0 0 Items[0].components."minecraft:custom_data".GemstoneS_1.Int
 execute store result score #Gem_2 Temporary run data get block 0 0 0 Items[0].components."minecraft:custom_data".GemstoneS_2.Int
 execute store result storage temp: temp_setting.Gemstone int 1 run scoreboard players operation #Gem_1 Temporary += #Gem_2 Temporary

## 最終計算
 execute store result score #Base Temporary run data get block 0 0 0 Items[0].components."minecraft:custom_data".Stats.Intelligence
 execute store result score #Reforge Temporary run data get block 0 0 0 Items[0].components."minecraft:custom_data".ReforgeStatus.Int
 execute store result score #StarAmount Temporary run data get block 0 0 0 Items[0].components."minecraft:custom_data".Star
  function system:item/enchantment/ench_stats/calc/int
 execute store result score #Ench Temporary run data get block 0 0 0 Items[0].components."minecraft:custom_data".EnchInt
# 足す
 scoreboard players operation #Base Temporary += #Reforge Temporary
 scoreboard players operation #Base Temporary += #Ench Temporary
 scoreboard players operation #Base Temporary += #Gem_1 Temporary
 function system:item/enchantment/ench_stats/functional_enchantment/chimera/copy_stat {"s":"Int"}

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
  #dia head
 execute if items block 0 0 0 container.0 *[custom_data~{DiaHead:1}] run scoreboard players operation #Base Temporary *= #2 Constant
# storageに保存
 execute store result storage temp: temp_setting.Base int 1 run scoreboard players get #Base Temporary


## Dungeon 計算
# Base
 scoreboard players operation #StatBoost Temporary = @s DungeonStatBoost
# star
 execute unless entity @s[tag=InMasterDungeon] run function system:item/lore/main/lore/calc_status/calc/dungeon_star
 execute if entity @s[tag=InMasterDungeon] run function system:item/lore/main/lore/calc_status/calc/master_dungeon_star
  
# Base intelligence * stat boost
 scoreboard players operation #ForDungeon Temporary *= #StatBoost Temporary
 scoreboard players operation #ForDungeon Temporary /= #100 Constant
  # diahead
  execute if items block 0 0 0 container.0 *[custom_data~{DiaHead:1}] run scoreboard players operation #ForDungeon Temporary *= #2 Constant
 execute store result storage temp: temp_setting.Dungeon int 1 run scoreboard players get #ForDungeon Temporary

# dungeonizeされてないitemたち
 execute if entity @s[tag=InDungeon] unless data block 0 0 0 Items[0].components."minecraft:custom_data".Dungeonized run data modify storage temp: temp_setting.Dungeon set from storage temp: temp_setting.Base


function system:item/lore/main/lore/calc_status/calc/intelligence/storage with storage temp: temp_setting
# potatoがついていない場合
 execute if score #PotatoBook.Amount Temporary matches 0 run data modify storage temp: temp_lore.Potato set value ""
# reforgeがない場合
 execute unless data block 0 0 0 Items[0].components."minecraft:custom_data".ReforgeStatus.Int run \
 data modify storage temp: temp_lore.Reforge set value ""
#dungeonizeされてない場合
 execute unless entity @s[tag=InDungeon] unless data block 0 0 0 Items[0].components."minecraft:custom_data".Dungeonized run data modify storage temp: temp_lore.Dungeon set value ""
# gemがない場合
 execute unless data block 0 0 0 Items[0].components."minecraft:custom_data".GemstoneS_1.Int unless data block 0 0 0 Items[0].components."minecraft:custom_data".GemstoneS_2.Int run data modify storage temp: temp_lore.Gemstone set value ""


# lore生成
 execute if entity @s[tag=InDungeon] if score #Base Temporary matches 1.. run function system:item/lore/main/lore/calc_status/store/intelligence/dungeon with storage temp: temp_lore
 execute unless entity @s[tag=InDungeon] if score #Base Temporary matches 1.. run function system:item/lore/main/lore/calc_status/store/intelligence/main with storage temp: temp_lore

function system:item/lore/main/lore/calc_status/calc/apply_score {"var":"Int"}
