summon husk ~ ~1 ~ {Tags:[Summoned_Mob]}
execute as @n[type=husk,tag=Summoned_Mob] run attribute @s max_health base set 10000
execute as @n[type=husk,tag=Summoned_Mob] run data merge entity @s {Health:10000f}
tag @e remove Summoned_Mob