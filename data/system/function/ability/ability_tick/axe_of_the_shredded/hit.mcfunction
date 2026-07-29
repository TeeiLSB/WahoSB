tag @n[tag=AotsThrower] add Aots.Hitted

scoreboard players operation #IDCHECK Temporary = @n[tag=AotsThrower] OwnerUUID
execute as @e[type=#teil:players,distance=..300] store result score @s OwnerUUID run data get entity @s UUID[0]
execute as @e[type=#teil:players,distance=..300] if score @s OwnerUUID = @n[tag=AotsThrower] OwnerUUID run tag @s add F7.AgroWither

damage @s 0.0001 player_attack by @n[tag=AotsThrower]
data merge entity @s {HurtTime:0} 

# calc defense
scoreboard players operation #damage Temporary = @n[tag=AotsThrower] Status.MeleeDamage
scoreboard players operation #Temp Temporary = @s Status.Defense
scoreboard players add #Temp Temporary 100
scoreboard players operation #damage Temporary /= #Temp Temporary
scoreboard players operation #damage Temporary *= #100 Constant

# damage apply
scoreboard players operation @s[tag=!Invulnerable] Status.Health -= #damage Temporary

# damage indicator
scoreboard players operation #num Temporary = #damage Temporary
function system:api/number_converter/run
#rng
 execute store result storage lib: random.x int 1 run random value 10..30
 execute store result storage lib: random.y int 1 run random value 10..500
 execute store result storage lib: random.z int 1 run random value 10..30
 tag @s add Hit.This

execute store result storage lib: dmg.value int 1 run scoreboard players get @n[tag=AotsThrower] Status.MeleeDamage
execute if entity @s[tag=!Invulnerable] run loot spawn ~ ~ ~ loot system:damage/damage_indicator
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run data merge entity @s {CustomNameVisible:1b,PickupDelay:32767,PortalCooldown:32s,Motion:[0,0,0],NoGravity:1b}
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] at @n[tag=Hit.This] positioned ~ ~-0.3 ~ run function system:ability/bow/terminator/arrow/wow/random_tp with storage lib: random
data remove storage lib: dmg
data remove storage lib: random

tag @s remove Hit.This

scoreboard players reset #CurrentHealth Temporary
scoreboard players reset #Damage Temporary