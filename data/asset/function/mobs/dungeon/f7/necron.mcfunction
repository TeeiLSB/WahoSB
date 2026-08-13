data merge entity @s {NoAI:1b,CustomNameVisible:1b,CustomName:{"text":"《Necron》","bold":true}}
effect give @s resistance infinite 255 true

tag @s add Mob.Dungeon.Boss.Necron
tag @s add CantAutoKill
tag @s add F7.Reset


tag @s add WahoMobs

tag @s add Mob.Boss


item replace entity @s saddle with \
bedrock[equippable={slot:"saddle",equip_sound:intentionally_empty,shearing_sound:intentionally_empty,swappable:false},\
enchantments={"system:bow/detect/arrow_hit":1}]

#scoreboard players set @s Status.Defense 720

scoreboard players set @s Status.Health 0
scoreboard players set @s Status.Health.b 1
scoreboard players set @s Status.Health.m 0
scoreboard players set @s Status.Health.k 0



