execute store result score #GetMainHand Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".status.Strength
execute store result score #GetHead Temporary run data get entity @s equipment.head.components."minecraft:custom_data".status.Strength
execute store result score #GetChest Temporary run data get entity @s equipment.chest.components."minecraft:custom_data".status.Strength
execute store result score #GetLegs Temporary run data get entity @s equipment.legs.components."minecraft:custom_data".status.Strength
execute store result score #GetFeet Temporary run data get entity @s equipment.feet.components."minecraft:custom_data".status.Strength

scoreboard players operation @s Status.Strength = #GetMainHand Temporary
scoreboard players operation @s Status.Strength += #GetHead Temporary
scoreboard players operation @s Status.Strength += #GetChest Temporary
scoreboard players operation @s Status.Strength += #GetLegs Temporary
scoreboard players operation @s Status.Strength += #GetFeet Temporary