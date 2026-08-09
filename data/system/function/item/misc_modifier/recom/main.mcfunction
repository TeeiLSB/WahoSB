item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{Recom:1}}

execute store result score #Rarity Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".Rarity
execute store result storage temp: temp_item.value int 1 run scoreboard players operation #Rarity Temporary += #1 Constant

# add rarity score 1
function system:item/misc_modifier/recom/set_value with storage temp: temp_item
data remove storage temp: temp_item.value