# item name
data modify storage temp: temp_item.Name set from entity @s equipment.legs.components."minecraft:custom_data".Name
#rarityの取得
function system:item/lore/legs/item_name/get_rarity

# reforgeがある場合
execute if data entity @s equipment.legs.components."minecraft:custom_data".Reforge run \
data modify storage temp: temp_item.Reforge set from entity @s equipment.legs.components."minecraft:custom_data".Reforge
execute if data entity @s equipment.legs.components."minecraft:custom_data".Reforge run \
data modify storage temp: temp_item.Space set value " "

# reforgeがない場合
execute unless data entity @s equipment.legs.components."minecraft:custom_data".Reforge run \
data modify storage temp: temp_item.Reforge set value ""
execute unless data entity @s equipment.legs.components."minecraft:custom_data".Reforge run \
data modify storage temp: temp_item.Space set value ""

# starの取得
function system:item/lore/legs/item_name/get_star_amout

# 更新
function system:item/lore/legs/item_name/run with storage temp: temp_item

# clear
data remove storage temp: temp_item

# lores

# そうじ
data remove storage temp: lore_set
data remove storage temp: loreGen
data remove storage temp: loreStats
data remove storage temp: temp_lore


# 更新

data modify storage temp: loreGen set value {lores:[]}


## health
function system:item/lore/legs/lore/calc_status/calc/health/main
## def
function system:item/lore/legs/lore/calc_status/calc/defense/main
## str
function system:item/lore/legs/lore/calc_status/calc/strength/main
## Cc
function system:item/lore/legs/lore/calc_status/calc/crit_chance/main
## Cd
function system:item/lore/legs/lore/calc_status/calc/crit_damage/main
## As
function system:item/lore/legs/lore/calc_status/calc/attack_speed/main
## Fero
function system:item/lore/legs/lore/calc_status/calc/ferocity/main
## Int
function system:item/lore/legs/lore/calc_status/calc/intelligence/main

# gem
execute if data entity @s equipment.legs.components."minecraft:custom_data".HasGemstoneSlot run function system:item/lore/legs/lore/gemstone/get/main



# space
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant run data modify storage temp: loreGen.lores append value ""

# enchantment
function system:item/lore/legs/lore/enchantment/get/main

# space
data modify storage temp: loreGen.lores append value ""

# rarity
function system:item/lore/legs/lore/rarity/main


item modify entity @s armor.legs {function: "set_lore" ,mode:"replace_all",lore:[]}


# わ
data modify storage temp: lore_set.0 set from storage temp: loreGen.lores[0]
data modify storage temp: lore_set.1 set from storage temp: loreGen.lores[1]
data modify storage temp: lore_set.2 set from storage temp: loreGen.lores[2]
data modify storage temp: lore_set.3 set from storage temp: loreGen.lores[3]
data modify storage temp: lore_set.4 set from storage temp: loreGen.lores[4]
data modify storage temp: lore_set.5 set from storage temp: loreGen.lores[5]
data modify storage temp: lore_set.6 set from storage temp: loreGen.lores[6]
data modify storage temp: lore_set.7 set from storage temp: loreGen.lores[7]
data modify storage temp: lore_set.8 set from storage temp: loreGen.lores[8]
data modify storage temp: lore_set.9 set from storage temp: loreGen.lores[9]
data modify storage temp: lore_set.10 set from storage temp: loreGen.lores[10]
data modify storage temp: lore_set.11 set from storage temp: loreGen.lores[11]
data modify storage temp: lore_set.12 set from storage temp: loreGen.lores[12]
data modify storage temp: lore_set.13 set from storage temp: loreGen.lores[13]
data modify storage temp: lore_set.14 set from storage temp: loreGen.lores[14]
data modify storage temp: lore_set.15 set from storage temp: loreGen.lores[15]
data modify storage temp: lore_set.16 set from storage temp: loreGen.lores[16]
data modify storage temp: lore_set.17 set from storage temp: loreGen.lores[17]
data modify storage temp: lore_set.18 set from storage temp: loreGen.lores[18]
data modify storage temp: lore_set.19 set from storage temp: loreGen.lores[19]

# loreに反映
execute if data storage temp: loreGen.lores[0] run function system:item/lore/legs/lore/run/0 with storage temp: lore_set
execute if data storage temp: loreGen.lores[1] run function system:item/lore/legs/lore/run/1 with storage temp: lore_set
execute if data storage temp: loreGen.lores[2] run function system:item/lore/legs/lore/run/2 with storage temp: lore_set
execute if data storage temp: loreGen.lores[3] run function system:item/lore/legs/lore/run/3 with storage temp: lore_set
execute if data storage temp: loreGen.lores[4] run function system:item/lore/legs/lore/run/4 with storage temp: lore_set
execute if data storage temp: loreGen.lores[5] run function system:item/lore/legs/lore/run/5 with storage temp: lore_set
execute if data storage temp: loreGen.lores[6] run function system:item/lore/legs/lore/run/6 with storage temp: lore_set
execute if data storage temp: loreGen.lores[7] run function system:item/lore/legs/lore/run/7 with storage temp: lore_set
execute if data storage temp: loreGen.lores[8] run function system:item/lore/legs/lore/run/8 with storage temp: lore_set
execute if data storage temp: loreGen.lores[9] run function system:item/lore/legs/lore/run/9 with storage temp: lore_set
execute if data storage temp: loreGen.lores[10] run function system:item/lore/legs/lore/run/10 with storage temp: lore_set
execute if data storage temp: loreGen.lores[11] run function system:item/lore/legs/lore/run/11 with storage temp: lore_set
execute if data storage temp: loreGen.lores[12] run function system:item/lore/legs/lore/run/12 with storage temp: lore_set
execute if data storage temp: loreGen.lores[13] run function system:item/lore/legs/lore/run/13 with storage temp: lore_set
execute if data storage temp: loreGen.lores[14] run function system:item/lore/legs/lore/run/14 with storage temp: lore_set
execute if data storage temp: loreGen.lores[15] run function system:item/lore/legs/lore/run/15 with storage temp: lore_set
execute if data storage temp: loreGen.lores[16] run function system:item/lore/legs/lore/run/16 with storage temp: lore_set
execute if data storage temp: loreGen.lores[17] run function system:item/lore/legs/lore/run/17 with storage temp: lore_set
execute if data storage temp: loreGen.lores[18] run function system:item/lore/legs/lore/run/18 with storage temp: lore_set
execute if data storage temp: loreGen.lores[19] run function system:item/lore/legs/lore/run/19 with storage temp: lore_set
