execute store result score #maxorhealth Temporary run data get entity @s Health
execute if score #maxorhealth Temporary matches ..151 run data modify entity @s Health set value 300f
scoreboard players reset #maxorhealth Temporary

data modify entity @s Motion set value [0.0,0.0,0.0]
rotate @s facing entity @p
execute if entity @p[distance=3..] run tp @s ^ ^ ^0.4



tag @s add Invulnerable
execute positioned 73 226 73 if entity @s[distance=..3] run tag @s remove Invulnerable
execute if score $MaxorEnraged F7.Gimmick.Status matches 1 run tag @s add Invulnerable

execute unless score $MaxorEnraged F7.Gimmick.Status matches 1 if score @s Status.Health matches ..25000000 run function system:dungeon/f7/p1/maxor/25m_trigger
execute if score @s Status.Health matches ..1 run function system:dungeon/f7/p1/maxor/death_trigger