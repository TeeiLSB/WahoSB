
damage @s 0.1 magic
data modify entity @s HurtTime set value 0

# damage apply
execute store result score #CurrentHealth Temporary run data get entity @s Health
scoreboard players operation #CurrentHealth Temporary -= @s Ferocity_Damage
scoreboard players add #CurrentHealth Temporary 1
execute store result entity @s Health int 1 run scoreboard players get #CurrentHealth Temporary

# damage indicator
scoreboard players operation #num Temporary = @s Ferocity_Damage
execute if score @s Ferocity_Damage matches 1000.. run data modify storage lib: DamageDec.1k set value ","
execute if score @s Ferocity_Damage matches 1000000.. run data modify storage lib: DamageDec.1m set value ","
execute if score @s Ferocity_Damage matches 1000000000.. run data modify storage lib: DamageDec.1b set value ","
data remove storage lib: DamageDec
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