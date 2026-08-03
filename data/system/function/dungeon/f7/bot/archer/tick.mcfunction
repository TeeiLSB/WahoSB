execute if score @s Bot.ActionProcess matches 0 if score @s Bot.IsInAction matches 0 positioned 73 221 59 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 1 if score @s Bot.IsInAction matches 0 positioned 73 224 65 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 2 if score @s Bot.IsInAction matches 0 positioned 73 224 68 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 3 if score @s Bot.IsInAction matches 0 positioned 70 224 68 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 4 if score @s Bot.IsInAction matches 0 positioned 69 225 67 run function system:bot/main/run


# wait for maxor laser hit
execute if score @s Bot.ActionProcess matches 5 if score @s Bot.IsInAction matches 0 run rotate @s facing entity @n[type=wither,tag=Mob.Dungeon.Boss.Maxor]
execute if score @s Bot.ActionProcess matches 5 if score @s Bot.IsInAction matches 0 run scoreboard players add @s Bot.ActionProcess 1
execute if score @s Bot.ActionProcess matches 6 if score #MaxorHittedLaser F7.Gimmick.Status matches 1 if score @s Bot.IsInAction matches 0 run function system:bot/actions/use_item/terminator
execute if score @s Bot.ActionProcess matches 7 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"3"}

execute if score @s Bot.ActionProcess matches 8 if score @s Bot.IsInAction matches 0 if score $MaxorEnraged F7.Gimmick.Status matches 0 unless score $MaxorPhase F7.Gimmick.Status matches 2 run scoreboard players set @s Bot.ActionProcess 5