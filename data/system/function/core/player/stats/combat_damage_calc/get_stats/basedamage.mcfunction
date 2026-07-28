execute store result score #GetMainHand Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".status.BaseDamage

scoreboard players operation @s Status.WeaponDamage = #GetMainHand Temporary