execute if score @s Bot.ActionProcess matches 0 if score @s Bot.IsInAction matches 0 positioned 66 221 46 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 1 if score @s Bot.IsInAction matches 0 run function system:bot/actions/use_item/spring_boots
execute if score @s Bot.ActionProcess matches 2 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/crouch/on
execute if score @s Bot.ActionProcess matches 3 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"25"}
execute if score @s Bot.ActionProcess matches 4 if score @s Bot.IsInAction matches 0 run function system:api/motion/motion_apply {"x":"0","y":"24","z":"0","xm":"0","ym":"0","zm":"0"}
execute if score @s Bot.ActionProcess matches 4 if score @s Bot.IsInAction matches 0 run scoreboard players add @s Bot.ActionProcess 1
execute if score @s Bot.ActionProcess matches 5 if score @s Bot.IsInAction matches 0 run playsound entity.firework_rocket.launch ambient @a ~ ~ ~ 1 2
execute if score @s Bot.ActionProcess matches 5 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/crouch/off
execute if score @s Bot.ActionProcess matches 6 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"27"}
execute if score @s Bot.ActionProcess matches 7 if score @s Bot.IsInAction matches 0 positioned 64 238 50 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 8 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"10"}
execute if score @s Bot.ActionProcess matches 9 if score @s Bot.IsInAction matches 0 run function system:bot/actions/f7/pickup_crystal
execute if score @s Bot.ActionProcess matches 10 if score @s Bot.IsInAction matches 0 positioned 62 238 49 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 11 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"5"}
execute if score @s Bot.ActionProcess matches 12 if score @s Bot.IsInAction matches 0 positioned 52 224 41 run function system:bot/main/run

# wait for maxor enrage

execute if score $RightCrystal F7.Gimmick.Status matches 1 if score @s Bot.ActionProcess matches 13 if score @s Bot.IsInAction matches 0 positioned 55 224 44 run function system:bot/main/run


# second crystal
execute if score @s Bot.ActionProcess matches 14 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"2"}
execute if score @s Bot.ActionProcess matches 15 if score @s Bot.IsInAction matches 0 positioned 60 221 49 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 16 if score @s Bot.IsInAction matches 0 run function system:bot/actions/use_item/spring_boots
execute if score @s Bot.ActionProcess matches 17 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/crouch/on
execute if score @s Bot.ActionProcess matches 18 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"25"}
execute if score @s Bot.ActionProcess matches 19 if score @s Bot.IsInAction matches 0 run function system:api/motion/motion_apply {"x":"0","y":"24","z":"0","xm":"0","ym":"0","zm":"0"}
execute if score @s Bot.ActionProcess matches 19 if score @s Bot.IsInAction matches 0 run scoreboard players add @s Bot.ActionProcess 1
execute if score @s Bot.ActionProcess matches 20 if score @s Bot.IsInAction matches 0 run playsound entity.firework_rocket.launch ambient @a ~ ~ ~ 1 2
execute if score @s Bot.ActionProcess matches 20 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/crouch/off
execute if score @s Bot.ActionProcess matches 21 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"27"}
execute if score @s Bot.ActionProcess matches 22 if score @s Bot.IsInAction matches 0 positioned 64 238 50 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 23 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"10"}

execute if score $MaxorEnraged F7.Gimmick.Status matches 1 if score @s Bot.ActionProcess matches 24 if score @s Bot.IsInAction matches 0 run function system:bot/actions/f7/pickup_crystal
execute if score @s Bot.ActionProcess matches 25 if score @s Bot.IsInAction matches 0 positioned 62 238 49 run function system:bot/main/run
execute if score @s Bot.ActionProcess matches 26 if score @s Bot.IsInAction matches 0 run function system:bot/actions/generic/wait/run {"tick":"5"}
execute if score @s Bot.ActionProcess matches 27 if score @s Bot.IsInAction matches 0 positioned 52 224 41 run function system:bot/main/run

# boots
execute if score @s Bot.ActionProcess matches 28 if score @s Bot.IsInAction matches 0 run function system:bot/actions/inventory/armor/maxor_boots