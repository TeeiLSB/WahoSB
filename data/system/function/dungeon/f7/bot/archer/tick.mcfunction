execute if score @s Bot.ActionProcess matches 0 if score @s Bot.IsInAction matches 0 positioned 73 221 59 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 1 if score @s Bot.IsInAction matches 0 positioned 73 224 65 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 2 if score @s Bot.IsInAction matches 0 positioned 73 224 68 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 3 if score @s Bot.IsInAction matches 0 positioned 70 224 68 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 4 if score @s Bot.IsInAction matches 0 positioned 65 225 68 run function system:bot/main/run


# wait for maxor laser hit
execute if score @s Bot.ActionProcess matches 5 if score @s Bot.IsInAction matches 0 run rotate @s facing entity @n[type=wither,tag=Mob.Dungeon.Boss.Maxor]
execute if score #MaxorHittedLaser F7.Gimmick.Status matches 1 if score @s Bot.ActionProcess matches 5 if score @s Bot.IsInAction matches 0 run function system:bot/actions/use_item/terminator

execute if score #MaxorHittedLaser F7.Gimmick.Status matches 1 if score @s Bot.ActionProcess matches 5 if score @s Bot.IsInAction matches 0 run say aaa

tag @s add Shooter
execute as @e at @s on attacker \
        as @e[distance=0,limit=1] if data entity @s {HurtTime:10s} \
run function system:ability/bow/terminator/arrow/wow/arrow_hit_as_reciever
tag @s remove Shooter