execute as @p[distance=..3] run function system:ability/ability_tick/bonzo_staff/motion_set
playsound minecraft:entity.firework_rocket.blast ambient @a ^ ^ ^ 0.5 1
execute unless entity @p[distance=..3] run kill @s
