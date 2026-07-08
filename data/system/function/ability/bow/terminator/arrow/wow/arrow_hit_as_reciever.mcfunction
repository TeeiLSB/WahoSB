data merge entity @s {HurtTime:0}


execute on attacker run tag @s add Shooter
execute store result score $rng Temporary run random value 0..1
execute if score $rng Temporary matches 1 run tag @e[distance=0.1..15,type=!player,type=!item,type=!marker,type=!arrow,limit=1,sort=random] add BouncyTarget
execute at @s positioned ~ ~1 ~ facing entity @n[tag=BouncyTarget] eyes summon arrow run function system:ability/bow/terminator/arrow/wow/init
tag @e remove BouncyTarget

execute on attacker run tag @s remove Shooter