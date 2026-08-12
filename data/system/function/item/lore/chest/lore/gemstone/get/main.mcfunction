# get gemslot amount
execute store result score #SLOT_AMOUNT Temporary run data get entity @s equipment.chest.components."minecraft:custom_data".HasGemstoneSlot

# no gem
data modify storage temp: gem.1 set value ""
data modify storage temp: gem.2 set value ""

execute if score #SLOT_AMOUNT Temporary matches 1.. unless data entity @s equipment.chest.components."minecraft:custom_data".Gemstone.1 run data modify storage temp: gem.1 set value "§8[§8⚔§8]"
execute if score #SLOT_AMOUNT Temporary matches 2.. unless data entity @s equipment.chest.components."minecraft:custom_data".Gemstone.2 run data modify storage temp: gem.2 set value "§8[§8⚔§8]"


# JASPER
execute if score #SLOT_AMOUNT Temporary matches 1.. if data entity @s equipment.chest.components."minecraft:custom_data".Gemstone.1.jasper run data modify storage temp: gem.1 set value "§6[§d⚔§6]"
execute if score #SLOT_AMOUNT Temporary matches 2.. if data entity @s equipment.chest.components."minecraft:custom_data".Gemstone.2.jasper run data modify storage temp: gem.2 set value "§6[§d⚔§6]"

# ONYX
execute if score #SLOT_AMOUNT Temporary matches 1.. if data entity @s equipment.chest.components."minecraft:custom_data".Gemstone.1.onyx run data modify storage temp: gem.1 set value "§6[§8⚔§6]"
execute if score #SLOT_AMOUNT Temporary matches 2.. if data entity @s equipment.chest.components."minecraft:custom_data".Gemstone.2.onyx run data modify storage temp: gem.2 set value "§6[§8⚔§6]"

# SAPPHIRE
execute if score #SLOT_AMOUNT Temporary matches 1.. if data entity @s equipment.chest.components."minecraft:custom_data".Gemstone.1.sapphire run data modify storage temp: gem.1 set value "§6[§b⚔§6]"
execute if score #SLOT_AMOUNT Temporary matches 2.. if data entity @s equipment.chest.components."minecraft:custom_data".Gemstone.2.sapphire run data modify storage temp: gem.2 set value "§6[§b⚔§6]"

function system:item/lore/main/lore/gemstone/get/append with storage temp: gem

scoreboard players reset #SLOT_AMOUNT Temporary
data remove storage temp: gem