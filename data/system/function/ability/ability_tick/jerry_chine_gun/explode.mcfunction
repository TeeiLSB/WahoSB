execute as @p[distance=..4.5] run function system:ability/ability_tick/jerry_chine_gun/motion_set
playsound minecraft:entity.villager.trade ambient @a ~ ~ ~ 0.2 1.5
execute unless entity @p[distance=..4.5] run kill @s