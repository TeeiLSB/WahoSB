# main tick
 function system:dungeon/f7/f7_main_tick

execute as @a[tag=Dungeon.Class.Mage] at @s run function system:dungeon/class/mage/tick


# bot
 execute as @e[type=mannequin,tag=Bot,tag=Bot.Berserk] at @s run function system:dungeon/f7/bot/berserk/tick
 execute as @e[type=mannequin,tag=Bot,tag=Bot.Mage] at @s run function system:dungeon/f7/bot/mage/tick
 execute as @e[type=mannequin,tag=Bot,tag=Bot.Tank] at @s run function system:dungeon/f7/bot/tank/tick
 execute as @e[type=mannequin,tag=Bot,tag=Bot.Archer] at @s run function system:dungeon/f7/bot/archer/tick
