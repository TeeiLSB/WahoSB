summon ender_dragon ~ ~5 ~ {Tags:[Summoned_Dragon]}
execute as @n[type=ender_dragon,tag=Summoned_Dragon] run attribute @s max_health base set 1000
execute as @n[type=ender_dragon,tag=Summoned_Dragon] run data merge entity @s {Health:1000f}
tag @e remove Summoned_Dragon