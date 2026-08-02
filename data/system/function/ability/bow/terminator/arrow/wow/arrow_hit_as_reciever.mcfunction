
data merge entity @s {HurtTime:0} 


execute on attacker run tag @s add Shooter

# calc defense
scoreboard players operation #damage Temporary = @n[tag=Shooter] Status.ArrowDamage
scoreboard players operation #Temp Temporary = @s Status.Defense
scoreboard players add #Temp Temporary 100
scoreboard players operation #damage Temporary /= #Temp Temporary
scoreboard players operation #damage Temporary *= #100 Constant


# damage indicator
scoreboard players operation #num Temporary = #damage Temporary
function system:api/number_converter/run

#rng
 execute store result storage lib: random.x int 1 run random value 10..30
 execute store result storage lib: random.y int 1 run random value 10..500
 execute store result storage lib: random.z int 1 run random value 10..30

execute store result storage lib: dmg.value int 1 run scoreboard players get @n[tag=Shooter] Status.ArrowDamage
execute if entity @s[tag=!Invulnerable] run loot spawn ~ ~ ~ loot system:damage/damage_indicator
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run data merge entity @s {CustomNameVisible:1b,PickupDelay:32767,PortalCooldown:20s,Motion:[0,0,0],NoGravity:1b}
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] positioned ~ ~-0.3 ~ run function system:ability/bow/terminator/arrow/wow/random_tp with storage lib: random
data remove storage lib: dmg
data remove storage lib: random

scoreboard players reset #CurrentHealth Temporary
scoreboard players reset #Damage Temporary


# damage apply
scoreboard players operation @s[tag=!Invulnerable] Status.Health -= #damage Temporary
function system:api/big_score/normalize/first {"as":"@s","obj":"Status.Health"}

# bouncy
execute store result score #rng Temporary run random value 0..1
execute if entity @s[tag=!Invulnerable] if score #rng Temporary matches 1 run tag @e[distance=0.1..6,type=!player,type=!item,type=!marker,type=!arrow,type=!armor_stand,limit=1,sort=random] add BouncyTarget
execute at @s positioned ~ ~1 ~ facing entity @n[tag=BouncyTarget] eyes summon arrow run function system:ability/bow/terminator/arrow/wow/init
tag @e remove BouncyTarget

execute on attacker run tag @s remove Shooter

