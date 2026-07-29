tag @n[tag=AotsThrower] add Aots.Hitted



execute if entity @s[type=wither] run function system:ability/ability_tick/axe_of_the_shredded/addagrotag with entity @s CustomName

damage @s 0.0001 player_attack by @n[tag=AotsThrower]
data merge entity @s {HurtTime:0} 

# damage apply
scoreboard players operation @s[tag=!Invulnerable] Status.Health -= @n[tag=AotsThrower] Status.MeleeDamage
# damage indicator
scoreboard players operation #num Temporary = @n[tag=AotsThrower] Status.MeleeDamage
execute if score @n[tag=AotsThrower] Status.MeleeDamage matches 1000.. run data modify storage lib: DamageDec.1k set value ","
execute if score @n[tag=AotsThrower] Status.MeleeDamage matches 1000000.. run data modify storage lib: DamageDec.1m set value ","
execute if score @n[tag=AotsThrower] Status.MeleeDamage matches 1000000000.. run data modify storage lib: DamageDec.1b set value ","
data remove storage lib: DamageDec
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