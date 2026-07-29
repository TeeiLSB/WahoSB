# main tick
 function system:dungeon/f7/f7_main_tick

execute as @a[tag=Dungeon.Class.Mage] at @s run function system:dungeon/class/mage/tick

# lava bounce
scoreboard players remove @a[scores={F7.LavaBounce.CD=1..}] F7.LavaBounce.CD 1
execute as @a at @s align xyz if block ~0.5 ~0.5 ~0.5 lava at @s run function system:dungeon/f7/lava/trigger

# f7 p1/ crystal
 execute as @e[type=interaction,tag=F7.CrystalHitbox] at @s if entity @e[type=#teil:players,limit=1,sort=nearest,distance=..10] run function system:dungeon/f7/p1/crystal/interaction_tick
 # crystal place
 execute as @e[type=#teil:players, tag=F7.HasCrystal,limit=1,sort=nearest] run function system:dungeon/f7/p1/crystal/place/main_tick
 execute as @e[type=item_display,tag=UnclaimbleCrstal] at @s if entity @p[distance=..10] run rotate @s ~7 0

# bot
 execute as @e[type=mannequin,tag=Bot,tag=Bot.Berserk] at @s run function system:dungeon/f7/bot/berserk/tick
 execute as @e[type=mannequin,tag=Bot,tag=Bot.Mage] at @s run function system:dungeon/f7/bot/mage/tick
