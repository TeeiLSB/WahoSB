execute as @a[tag=Dungeon.Class.Mage] at @s run function system:dungeon/class/mage/tick

# lava bounce
scoreboard players remove @a[scores={F7.LavaBounce.CD=1..}] F7.LavaBounce.CD 1
execute as @a at @s align xyz if block ~0.5 ~0.5 ~0.5 lava at @s run function system:dungeon/f7/lava/trigger
