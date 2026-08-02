execute if score @s Bot.ActionProcess matches 0 if score @s Bot.IsInAction matches 0 positioned 73 221 59 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 1 if score @s Bot.IsInAction matches 0 run function system:bot/actions/use_item/axe_of_the_shredded
execute if score @s Bot.ActionProcess matches 2 if score @s Bot.IsInAction matches 0 positioned 73 224 65 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 3 if score @s Bot.IsInAction matches 0 run function system:bot/actions/use_item/axe_of_the_shredded
execute if score @s Bot.ActionProcess matches 4 if score @s Bot.IsInAction matches 0 positioned 73 224 68 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 5 if score @s Bot.IsInAction matches 0 positioned 73 225 70 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 6 if score @s Bot.IsInAction matches 0 positioned 73 225 76 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 7 if score @s Bot.IsInAction matches 0 run function system:bot/actions/use_item/axe_of_the_shredded

execute if score @s Bot.ActionProcess matches 8 if score @s Bot.IsInAction matches 0 run function system:bot/actions/use_item/axe_of_the_shredded
execute if score @s Bot.ActionProcess matches 9 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"10"}
execute if score @s Bot.ActionProcess matches 10 if score @s Bot.IsInAction matches 0 run function system:bot/actions/use_item/axe_of_the_shredded
execute if score @s Bot.ActionProcess matches 11 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"10"}
execute if score @s Bot.ActionProcess matches 12 if score @s Bot.IsInAction matches 0 run function system:bot/actions/use_item/axe_of_the_shredded
execute if score @s Bot.ActionProcess matches 13 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"10"}
execute if score @s Bot.ActionProcess matches 14 if score @s Bot.IsInAction matches 0 run function system:bot/actions/use_item/axe_of_the_shredded
execute if score @s Bot.ActionProcess matches 15 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"10"}
execute if score @s Bot.ActionProcess matches 16 if score @s Bot.IsInAction matches 0 run function system:bot/actions/use_item/axe_of_the_shredded



rotate @s facing entity @n[type=wither,tag=Mob.Dungeon.Boss.Maxor]