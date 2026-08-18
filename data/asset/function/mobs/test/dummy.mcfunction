data merge entity @s {NoAI:1b}
effect give @s resistance infinite 255 true
tag @s add WahoMobs
tag @s add Mob.Test.Dummy
scoreboard players set @s Status.Health 0
scoreboard players set @s Status.Health.b 1000
scoreboard players set @s Status.Health.m 0
scoreboard players set @s Status.Health.k 0

item replace entity @s saddle with \
bedrock[equippable={slot:"saddle",equip_sound:intentionally_empty,shearing_sound:intentionally_empty,swappable:false},\
enchantments={"system:bow/detect/arrow_hit":1}]