## RESET
# reset
data remove storage temp: ench_lore
data remove storage temp: ench:final


## ULT ENCH
execute if data entity @s SelectedItem.components."minecraft:custom_data".enchant.ult.duplex run data modify storage temp: ench_lore append value "§d§lDuplex V"
execute if data entity @s SelectedItem.components."minecraft:custom_data".enchant.ult.soul_eater run data modify storage temp: ench_lore append value "§d§lSoul Eater V"

## NOMAL ENCH
execute if data entity @s SelectedItem.components."minecraft:custom_data".enchant.dragon_hunter run data modify storage temp: ench_lore append value "§9Dragon Hunter V"
execute if data entity @s SelectedItem.components."minecraft:custom_data".enchant.flame run data modify storage temp: ench_lore append value "§9Flame II"
execute if data entity @s SelectedItem.components."minecraft:custom_data".enchant.overload run data modify storage temp: ench_lore append value "§9Overload V"
execute if data entity @s SelectedItem.components."minecraft:custom_data".enchant.piercing run data modify storage temp: ench_lore append value "§9Piercing I"
execute if data entity @s SelectedItem.components."minecraft:custom_data".enchant.power run data modify storage temp: ench_lore append value "§cPower VII"
execute if data entity @s SelectedItem.components."minecraft:custom_data".enchant.snipe run data modify storage temp: ench_lore append value "§cSnipe IV"
execute if data entity @s SelectedItem.components."minecraft:custom_data".enchant.toxophilite run data modify storage temp: ench_lore append value "§6Toxophilite X"
execute if data entity @s SelectedItem.components."minecraft:custom_data".enchant.vicious run data modify storage temp: ench_lore append value "§9Vicious V"

# list
function system:item/lore/main/lore/enchantment/get/list/run

