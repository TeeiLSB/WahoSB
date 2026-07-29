execute store result score #GetMainHand Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".status.CritDamage
execute store result score #GetHead Temporary run data get entity @s equipment.head.components."minecraft:custom_data".status.CritDamage
execute store result score #GetChest Temporary run data get entity @s equipment.chest.components."minecraft:custom_data".status.CritDamage
execute store result score #GetLegs Temporary run data get entity @s equipment.legs.components."minecraft:custom_data".status.CritDamage
execute store result score #GetFeet Temporary run data get entity @s equipment.feet.components."minecraft:custom_data".status.CritDamage

scoreboard players operation @s Status.CritDamage = #GetMainHand Temporary
scoreboard players operation @s Status.CritDamage += #GetHead Temporary
scoreboard players operation @s Status.CritDamage += #GetChest Temporary
scoreboard players operation @s Status.CritDamage += #GetLegs Temporary
scoreboard players operation @s Status.CritDamage += #GetFeet Temporary
scoreboard players operation @s Status.CritDamage += #BonusCrit Status.CritDamage