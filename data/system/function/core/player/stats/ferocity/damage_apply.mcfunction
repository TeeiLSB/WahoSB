
damage @s 0.1 magic
data modify entity @s HurtTime set value 0

# calc defense
scoreboard players operation #damage Temporary = @s Status.ArrowDamage
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

execute store result storage lib: dmg.value int 1 run scoreboard players get @s Ferocity_Damage
loot spawn ~ ~ ~ loot system:damage/damage_indicator
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run data merge entity @s {CustomNameVisible:1b,PickupDelay:32767,PortalCooldown:20s,Motion:[0,0,0],NoGravity:1b}
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] positioned ~ ~-0.3 ~ run function system:ability/bow/terminator/arrow/wow/random_tp with storage lib: random
data remove storage lib: dmg
data remove storage lib: random


scoreboard players reset #CurrentHealth Temporary
scoreboard players reset #Damage Temporary



playsound entity.zombie.break_wooden_door ambient @a ~ ~ ~ 0.3 1.5
playsound entity.iron_golem.attack ambient @a ~ ~ ~ 3 1.4

scoreboard players remove @s Ferocity_Remain 1

scoreboard players reset @s Ferocity_CD
execute if score @s Ferocity_Remain matches 1.. run scoreboard players set @s Ferocity_CD 5