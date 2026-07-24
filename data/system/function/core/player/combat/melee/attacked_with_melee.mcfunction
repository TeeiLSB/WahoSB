damage @s 0.1 arrow by @p[tag=MeleeAttacker] from @p[tag=MeleeAttacker]

# attack tag
execute on attacker run tag @s add MeleeAttacker

# damage apply
execute store result score #CurrentHealth Temporary run data get entity @s Health
scoreboard players operation #CurrentHealth Temporary -= @p[tag=MeleeAttacker] Status.MeleeDamage
scoreboard players add #CurrentHealth Temporary 1
execute store result entity @s Health int 1 run scoreboard players get #CurrentHealth Temporary

# damage indicator
scoreboard players operation #num Temporary = @p[tag=MeleeAttacker] Status.MeleeDamage
execute if score @p[tag=MeleeAttacker] Status.MeleeDamage matches 1000.. run data modify storage lib: DamageDec.1k set value ","
execute if score @p[tag=MeleeAttacker] Status.MeleeDamage matches 1000000.. run data modify storage lib: DamageDec.1m set value ","
execute if score @p[tag=MeleeAttacker] Status.MeleeDamage matches 1000000000.. run data modify storage lib: DamageDec.1b set value ","
data remove storage lib: DamageDec
function system:api/number_converter/run

#rng
 execute store result storage lib: random.x int 1 run random value 10..30
 execute store result storage lib: random.y int 1 run random value 10..500
 execute store result storage lib: random.z int 1 run random value 10..30

execute store result storage lib: dmg.value int 1 run scoreboard players get @p[tag=MeleeAttacker] Status.MeleeDamage
loot spawn ~ ~ ~ loot system:damage/damage_indicator
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run data merge entity @s {CustomNameVisible:1b,PickupDelay:32767,PortalCooldown:20s,Motion:[0,0,0],NoGravity:1b}
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] positioned ~ ~-0.3 ~ run function system:ability/bow/terminator/arrow/wow/random_tp with storage lib: random
data remove storage lib: dmg
data remove storage lib: random


scoreboard players reset #CurrentHealth Temporary
scoreboard players reset #Damage Temporary

# on attacker
tag @s add MeleeReciever
execute on attacker run function system:core/player/combat/melee/on_attacker
tag @s remove MeleeReciever