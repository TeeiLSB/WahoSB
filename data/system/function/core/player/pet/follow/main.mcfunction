# facing

execute as @e[type=armor_stand,tag=Pet] at @s if entity @p[distance=4..] run rotate @s facing entity @p
# follow
execute as @e[type=armor_stand,tag=Pet] at @s if entity @p[distance=4..10] run tp @s ^ ^ ^0.5
execute as @e[type=armor_stand,tag=Pet] at @s if entity @p[distance=10..20] run tp @s ^ ^ ^1
execute as @e[type=armor_stand,tag=Pet] at @s if entity @p[distance=20..] run tp @s ^ ^ ^2

# idle
scoreboard players add #Pet.Idle Tick 1
execute as @e[type=armor_stand,tag=Pet] at @s if score #Pet.Idle Tick matches 1..15 run tp @s ~ ~0.1 ~
execute as @e[type=armor_stand,tag=Pet] at @s if score #Pet.Idle Tick matches 16..26 run tp @s ~ ~ ~
execute as @e[type=armor_stand,tag=Pet] at @s if score #Pet.Idle Tick matches 26..40 run tp @s ~ ~-0.1 ~
execute as @e[type=armor_stand,tag=Pet] at @s if score #Pet.Idle Tick matches 41..61 run tp @s ~ ~ ~
execute if score #Pet.Idle Tick matches 61 run scoreboard players set #Pet.Idle Tick 1