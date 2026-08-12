execute store result score #Rarity Temporary run data get entity @s equipment.chest.components."minecraft:custom_data".Rarity

execute if score #Rarity Temporary matches ..1 run data modify storage temp: temp_item.Rarity set value "§f"
execute if score #Rarity Temporary matches 2 run data modify storage temp: temp_item.Rarity set value "§a"
execute if score #Rarity Temporary matches 3 run data modify storage temp: temp_item.Rarity set value "§9"
execute if score #Rarity Temporary matches 4 run data modify storage temp: temp_item.Rarity set value "§5"
execute if score #Rarity Temporary matches 5 run data modify storage temp: temp_item.Rarity set value "§6"
execute if score #Rarity Temporary matches 6 run data modify storage temp: temp_item.Rarity set value "§d"
execute if score #Rarity Temporary matches 7 run data modify storage temp: temp_item.Rarity set value "§b"
execute if score #Rarity Temporary matches 8 run data modify storage temp: temp_item.Rarity set value "§c"
execute if score #Rarity Temporary matches 9.. run data modify storage temp: temp_item.Rarity set value "§c"