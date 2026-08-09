# item name
data modify storage temp: temp_item.Name set from entity @s SelectedItem.components."minecraft:custom_data".Name
#rarityの取得
function system:item/lore/main/item_name/get_rarity

# reforgeがある場合
execute if data entity @s SelectedItem.components."minecraft:custom_data".Reforge run \
data modify storage temp: temp_item.Reforge set from entity @s SelectedItem.components."minecraft:custom_data".Reforge
execute if data entity @s SelectedItem.components."minecraft:custom_data".Reforge run \
data modify storage temp: temp_item.Space set value " "

# reforgeがない場合
execute unless data entity @s SelectedItem.components."minecraft:custom_data".Reforge run \
data modify storage temp: temp_item.Reforge set value ""
execute unless data entity @s SelectedItem.components."minecraft:custom_data".Reforge run \
data modify storage temp: temp_item.Space set value ""

# starの取得
function system:item/lore/main/item_name/get_star_amout

# 更新
function system:item/lore/main/item_name/run with storage temp: temp_item

# clear
data remove storage temp: temp_item

# lores
# 更新

data modify storage temp: loreGen set value {lores:[]}

## damage
function system:item/lore/main/lore/calc_status/calc/damage/main

## str
function system:item/lore/main/lore/calc_status/calc/strength/main


# わ
data modify storage temp: lore_set.0 set from storage temp: loreGen.lores[0]
data modify storage temp: lore_set.1 set from storage temp: loreGen.lores[1]
data modify storage temp: lore_set.2 set from storage temp: loreGen.lores[2]
data modify storage temp: lore_set.3 set from storage temp: loreGen.lores[3]
data modify storage temp: lore_set.4 set from storage temp: loreGen.lores[4]



function system:item/lore/main/lore/run with storage temp: lore_set

# そうじ
#data remove storage temp: loreGen
data remove storage temp: loreStats
data remove storage temp: temp_lore