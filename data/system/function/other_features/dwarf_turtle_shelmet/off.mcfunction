execute unless score @s shelmet matches 1 run tellraw @s {"text":"§cDwarf Turtle Shelmet disabled!"}
execute unless score @s shelmet matches 1 run attribute @s knockback_resistance base reset
execute unless score @s shelmet matches 1 run scoreboard players set @s shelmet 1
