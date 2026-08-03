
effect give @s resistance infinite 255 true
attribute @s knockback_resistance base set 100

tag @s add WahoMobs
tag @s add F7.Reset
scoreboard players set @s Status.Health 0
scoreboard players set @s Status.Health.b 0
scoreboard players set @s Status.Health.m 100
scoreboard players set @s Status.Health.k 0


item replace entity @s weapon.mainhand with stone_pickaxe


item replace entity @s saddle with \
bedrock[equippable={slot:"saddle",equip_sound:intentionally_empty,shearing_sound:intentionally_empty,swappable:false},\
enchantments={"system:bow/detect/arrow_hit":1}]