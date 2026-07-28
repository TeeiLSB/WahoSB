# なんかバリアみたいなのなくす
execute store result score #maxorhealth Temporary run data get entity @s Health
execute if score #maxorhealth Temporary matches ..151 run data modify entity @s Health set value 300f
scoreboard players reset #maxorhealth Temporary

# playerを追尾
data modify entity @s Motion set value [0.0,0.0,0.0]
execute unless score #MaxorHittedLaser F7.Gimmick.Status matches 1 run rotate @s facing entity @p
execute unless score #MaxorHittedLaser F7.Gimmick.Status matches 1 run execute if entity @p[distance=3..] run tp @s ^ ^ ^0.4


# maxorはレーザーの近くにいる以外の時無敵にする
tag @s add Invulnerable
execute if score $CrystalCount F7.Gimmick.Status matches 2 positioned 73 226 73 if entity @s[distance=..2] run tag @s remove Invulnerable
execute if score $CrystalCount F7.Gimmick.Status matches 2 positioned 73 226 73 if entity @s[distance=..2] run rotate @s ~ 90
execute if score $CrystalCount F7.Gimmick.Status matches 2 positioned 73 226 73 if entity @s[distance=..2] run scoreboard players set #MaxorHittedLaser F7.Gimmick.Status 1
execute if score $MaxorEnraged F7.Gimmick.Status matches 1 run tag @s add Invulnerable

# HPが25m以下になったらenrageさせる
execute if score $CrystalCount F7.Gimmick.Status matches 2 unless score $MaxorPhase F7.Gimmick.Status matches 1 if score @s Status.Health matches ..25000000 run function system:dungeon/f7/p1/maxor/25m_trigger
execute if score $MaxorEnraged F7.Gimmick.Status matches 1 run scoreboard players set @s Status.Health 25000000
# しんだ
execute if score @s Status.Health matches ..1 run function system:dungeon/f7/p1/maxor/death_trigger


# enrageしているときは#MaxorHittedLaserをreset
execute if score $MaxorEnraged F7.Gimmick.Status matches 1 run scoreboard players reset #MaxorHittedLaser F7.Gimmick.Status

# maxor hp check
title @a actionbar {"score":{"name":"@s","objective":"Status.Health"}}