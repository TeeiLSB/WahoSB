# sword tick
 execute as @a at @s run function system:ability/sword/tick


# clear arrow
# arrow tick
 function system:ability/bow/terminator/arrow/arrow_tick


 execute as @e[type=ender_dragon] run data merge entity @s {Motion:[0,0,0]}
 execute as @e[type=wither] run data merge entity @s {Motion:[0,0,0]}