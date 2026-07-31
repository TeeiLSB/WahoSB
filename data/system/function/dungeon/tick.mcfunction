# main tick
 function system:dungeon/f7/f7_main_tick

execute as @a[tag=Dungeon.Class.Mage] at @s run function system:dungeon/class/mage/tick


# bot
 execute as @e[type=mannequin,tag=Bot,tag=Bot.Berserk] at @s run function system:dungeon/f7/bot/berserk/tick
 execute as @e[type=mannequin,tag=Bot,tag=Bot.Mage] at @s run function system:dungeon/f7/bot/mage/tick
