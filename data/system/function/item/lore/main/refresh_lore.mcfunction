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
function system:item/lore/main/lore/run with storage temp: temp_lore