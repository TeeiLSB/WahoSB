## RESET
# reset
data remove storage temp: ench_lore

### BOWS
## ULT ENCH
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.ult.duplex run data modify storage temp: ench_lore append value "§d§lDuplex V"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.ult.soul_eater run data modify storage temp: ench_lore append value "§d§lSoul Eater V"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.ult.legion run data modify storage temp: ench_lore append value "§d§lLegion V"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.ult.chimera run data modify storage temp: ench_lore append value "§d§lChimera V"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.ult.ultimate_wise run data modify storage temp: ench_lore append value "§d§lUltimate Wise V"

## NOMAL ENCH

execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.critical run data modify storage temp: ench_lore append value "§9Critical VII"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.dragon_hunter run data modify storage temp: ench_lore append value "§9Dragon Hunter V"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.ender_slayer run data modify storage temp: ench_lore append value "§9Ender Slayer VII"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.fire_aspect run data modify storage temp: ench_lore append value "§9Fire Aspect III"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.first_strike run data modify storage temp: ench_lore append value "§9First Strike V"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.flame run data modify storage temp: ench_lore append value "§9Flame II"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.giant_killer run data modify storage temp: ench_lore append value "§9Giant Killer VII"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.gravity run data modify storage temp: ench_lore append value "§9Gravity V"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.growth run data modify storage temp: ench_lore append value "§9Growth VII"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.lethality run data modify storage temp: ench_lore append value "§9Lethality VI"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.overload run data modify storage temp: ench_lore append value "§9Overload V"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.piercing run data modify storage temp: ench_lore append value "§9Piercing I"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.power run data modify storage temp: ench_lore append value "§9Power VII"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.prosecute run data modify storage temp: ench_lore append value "§9Prosecute VI"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.protection run data modify storage temp: ench_lore append value "§9Protection VII"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.sharpness run data modify storage temp: ench_lore append value "§9Sharpness VII"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.snipe run data modify storage temp: ench_lore append value "§9Snipe IV"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.smarty_pants run data modify storage temp: ench_lore append value "§9Smarty Pants V"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.smite run data modify storage temp: ench_lore append value "§9Smite VII"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.sugar_rush run data modify storage temp: ench_lore append value "§9Sugar Rush III"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.thunderlord run data modify storage temp: ench_lore append value "§9Thunderlord VII"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.toxophilite run data modify storage temp: ench_lore append value "§9Toxophilite X"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.venomous run data modify storage temp: ench_lore append value "§9Venomous VII"
execute if data entity @s equipment.legs.components."minecraft:custom_data".enchant.vicious run data modify storage temp: ench_lore append value "§9Vicious V"



# list
function system:item/lore/main/lore/enchantment/get/list/run