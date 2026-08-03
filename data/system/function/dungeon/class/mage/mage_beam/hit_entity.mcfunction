tag @p[tag=Beamer] add Beam.Hitted


execute if entity @s[type=wither] run tag @p[tag=Beamer] add F7.AgroWither

damage @s 0.0001 magic by @p[tag=Beamer]
data merge entity @s {HurtTime:0} 




scoreboard players operation $BS.B BigScore = @p[tag=Beamer] Status.MageBeamDamage.b
scoreboard players operation $BS.M BigScore = @p[tag=Beamer] Status.MageBeamDamage.m
scoreboard players operation $BS.K BigScore = @p[tag=Beamer] Status.MageBeamDamage.k
scoreboard players operation $BS BigScore = @p[tag=Beamer] Status.MageBeamDamage

scoreboard players operation #DividedBy BigScore = @s Status.Defense
scoreboard players operation #DividedBy BigScore += #100 Constant
function system:api/big_score/math/divide

scoreboard players set #MultiplyBy BigScore 100
function system:api/big_score/math/multiply

execute if entity @s[tag=Mob.Boss] run scoreboard players set #DividedBy BigScore 10
execute if entity @s[tag=Mob.Boss] run function system:api/big_score/math/divide





scoreboard players operation @s[tag=!Invulnerable] Status.Health.b -= $BS.B BigScore
scoreboard players operation @s[tag=!Invulnerable] Status.Health.m -= $BS.M BigScore
scoreboard players operation @s[tag=!Invulnerable] Status.Health.k -= $BS.K BigScore
scoreboard players operation @s[tag=!Invulnerable] Status.Health -= $BS BigScore

#rng
 execute store result storage lib: random.x int 1 run random value 10..30
 execute store result storage lib: random.y int 1 run random value 10..500
 execute store result storage lib: random.z int 1 run random value 10..30
 tag @s add Hit.This

execute if entity @s[tag=!Invulnerable] run loot spawn ~ ~ ~ loot system:damage/damage_beta_big_score
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] run data merge entity @s {CustomNameVisible:1b,PickupDelay:32767,PortalCooldown:32s,Motion:[0,0,0],NoGravity:1b}
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}},distance=0] at @n[tag=Hit.This] positioned ~ ~-0.3 ~ run function system:ability/bow/terminator/arrow/wow/random_tp with storage lib: random
data remove storage lib: random
tag @s remove Hit.This


function system:api/big_score/normalize/first {"as":"@s","obj":"Status.Health"}


title @a title ""
title @a subtitle ["§c",{"score":{"name":"@s","objective":"Status.Health.b"}},",",{"score":{"name":"@s","objective":"Status.Health.m"}},",",{"score":{"name":"@s","objective":"Status.Health.k"}},",",{"score":{"name":"@s","objective":"Status.Health"}}, "HP!"]

# これはbig scoreのやつ！！！
function system:api/big_score/converter/reset_scores
