summon wither ~ ~5 ~ {Tags:[Summoned_Wither]}
execute as @n[type=wither,tag=Summoned_Wither] run attribute @s max_health base set 1000
execute as @n[type=wither,tag=Summoned_Wither] run data merge entity @s {Health:1000f}
tag @e remove Summoned_Wither