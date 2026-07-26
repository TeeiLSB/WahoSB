rotate @s facing entity @p
tag @s add HittedBallon
execute as @p[distance=..2.5] run function system:ability/ability_tick/bonzo_staff/motion_set

scoreboard players set @s AutoKill 0