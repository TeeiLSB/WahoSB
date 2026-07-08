
execute if score @s shelmet matches 1 run attribute @s knockback_resistance base set 1000
execute if score @s shelmet matches 1 run tellraw @s {"text":"§aDwarf Turtle Shelmet enabled!"}
execute if score @s shelmet matches 1 run scoreboard players set @s shelmet 0

