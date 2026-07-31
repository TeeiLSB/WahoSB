tag @p[tag=Beamer] add Beam.Hitted


execute if entity @s[type=wither] run tag @p[tag=Beamer] add F7.AgroWither

damage @s 0.0001 magic by @p[tag=Beamer]
data merge entity @s {HurtTime:0} 


scoreboard players operation @s Status.Health.b -= @p[tag=Beamer] Status.MageBeamDamage.b
scoreboard players operation @s Status.Health.m -= @p[tag=Beamer] Status.MageBeamDamage.m
scoreboard players operation @s Status.Health.k -= @p[tag=Beamer] Status.MageBeamDamage.k
scoreboard players operation @s Status.Health -= @p[tag=Beamer] Status.MageBeamDamage

scoreboard players operation $BS.B BigScore = @s Status.Health.b
scoreboard players operation $BS.M BigScore = @s Status.Health.m
scoreboard players operation $BS.K BigScore = @s Status.Health.k
scoreboard players operation $BS BigScore = @s Status.Health

function system:api/big_score/normalize/run

scoreboard players operation @s Status.Health.b = $BS.B BigScore
scoreboard players operation @s Status.Health.m = $BS.M BigScore
scoreboard players operation @s Status.Health.k = $BS.K BigScore
scoreboard players operation @s Status.Health = $BS BigScore


# calc defense いったんdefenseはぶく！！！！ hyperion damageいったんはぶく！！


# damage indicator
scoreboard players operation #num Temporary = #damage_hyperion Temporary
function system:api/number_converter/run

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

# これはbig scoreのやつ！！！
function system:api/big_score/converter/reset_scores

tag @s remove Hit.This

scoreboard players reset #CurrentHealth Temporary
scoreboard players reset #Damage Temporary