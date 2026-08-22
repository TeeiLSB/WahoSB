data merge entity @s {profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzM5OWUwMGY0MDQ0MTFlNDY1ZDc0Mzg4ZGYxMzJkNTFmZTg2OGVjZjg2ZjFjMDczZmFmZmExZDkxNzJlYzBmMyJ9fX0="}],model:"slim"}}


effect give @s resistance infinite 255 true
attribute @s knockback_resistance base set 100

effect give @s invisibility 5 1 true

tag @s add Mob.CanGyro
tag @s add WahoMobs
tag @s add F7.Reset
scoreboard players set @s Status.Health 0
scoreboard players set @s Status.Health.b 0
scoreboard players set @s Status.Health.m 20
scoreboard players set @s Status.Health.k 0

scoreboard players set @s Status.MobAttackDamage 48000


item replace entity @s weapon.mainhand with iron_sword
item replace entity @s armor.feet with leather_boots[dyed_color=3087151]


item replace entity @s saddle with \
bedrock[equippable={slot:"saddle",equip_sound:intentionally_empty,shearing_sound:intentionally_empty,swappable:false},\
enchantments={"system:bow/detect/arrow_hit":1}]