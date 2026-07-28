execute store result score #GetMainHand Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".status.Intelligence
execute store result score #GetHead Temporary run data get entity @s equipment.head.components."minecraft:custom_data".status.Intelligence
execute store result score #GetChest Temporary run data get entity @s equipment.chest.components."minecraft:custom_data".status.Intelligence
execute store result score #GetLegs Temporary run data get entity @s equipment.legs.components."minecraft:custom_data".status.Intelligence
execute store result score #GetFeet Temporary run data get entity @s equipment.feet.components."minecraft:custom_data".status.Intelligence

scoreboard players operation @s Status.Intelligence = #GetMainHand Temporary
scoreboard players operation @s Status.Intelligence += #GetHead Temporary
scoreboard players operation @s Status.Intelligence += #GetChest Temporary
scoreboard players operation @s Status.Intelligence += #GetLegs Temporary
scoreboard players operation @s Status.Intelligence += #GetFeet Temporary