tag @s add MageBeam.Hit_Check

damage @s 0.0001 magic by @p[tag=Beamer]
data merge entity @s {HurtTime:0} 


# damage apply
execute store result score #CurrentHealth Temporary run data get entity @s Health
scoreboard players operation #CurrentHealth Temporary -= @n[tag=Beamer] Status.MageBeamDamage
scoreboard players add #CurrentHealth Temporary 1
execute store result entity @s Health int 1 run scoreboard players get #CurrentHealth Temporary

# damage indicator
scoreboard players operation #num Temporary = @n[tag=Beamer] Status.MageBeamDamage
execute if score @n[tag=Beamer] Status.MageBeamDamage matches 1000.. run data modify storage lib: DamageDec.1k set value ","
execute if score @n[tag=Beamer] Status.MageBeamDamage matches 1000000.. run data modify storage lib: DamageDec.1m set value ","
execute if score @n[tag=Beamer] Status.MageBeamDamage matches 1000000000.. run data modify storage lib: DamageDec.1b set value ","
data remove storage lib: DamageDec
function system:api/number_converter/run

#rng
 execute store result storage lib: random.x int 1 run random value 0..25
 execute store result storage lib: random.y int 1 run random value 0..50
 execute store result storage lib: random.z int 1 run random value 0..25

execute store result storage lib: dmg.value int 1 run scoreboard players get @n[tag=Beamer] Status.MageBeamDamage
loot spawn ~ ~ ~ loot system:damage/damage_indicator
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run data merge entity @s {CustomNameVisible:1b,PickupDelay:32767,PortalCooldown:32s,Motion:[0,0,0],NoGravity:1b}
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run function system:ability/bow/terminator/arrow/wow/random_tp with storage lib: random
data remove storage lib: dmg
data remove storage lib: random


scoreboard players reset #CurrentHealth Temporary
scoreboard players reset #Damage Temporary