# なんかバリアみたいなのなくす
execute store result score #maxorhealth Temporary run data get entity @s Health
execute if score #maxorhealth Temporary matches ..151 run data modify entity @s Health set value 300f
scoreboard players reset #maxorhealth Temporary

# playerを追尾 (F7.AgroWither tagを優先して追尾)

data modify entity @s Motion set value [0.0,0.0,0.0]
execute if score $F7tick Tick matches 160.. at @s run rotate @s facing entity @n[type=#teil:players,distance=3..]
execute if score $F7tick Tick matches 160.. at @s run rotate @s facing entity @n[type=#teil:players,distance=3..,tag=F7.AgroWither]
execute if score $F7tick Tick matches 160.. at @s unless score #MaxorHittedLaser F7.Gimmick.Status matches 1 unless entity @n[type=#teil:players,distance=..3] run tp @s ^ ^ ^0.5
execute if score $F7tick Tick matches 160.. at @s if entity @n[type=#teil:players,distance=..200] unless score #MaxorHittedLaser F7.Gimmick.Status matches 1 if entity @n[type=#teil:players,distance=3.. ,tag=F7.AgroWither] run tp @s ^ ^ ^0.1

# agroは2人以上だめ！
execute store result score #agro_check Temporary if entity @e[type=#teil:players, tag=F7.AgroWither]
execute at @s if score #agro_check Temporary matches 2.. run function system:dungeon/f7/p1/maxor/remove_agro_tag
scoreboard players reset #agro_check Temporary

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

# bossbar
scoreboard players operation #BossHPRate Temporary = @s Status.Health
scoreboard players operation #BossHPRate Temporary /= #1000000 Constant
execute store result bossbar wahosb:f7 value run scoreboard players get #BossHPRate Temporary
scoreboard players reset #BossHPRate Temporary

# maxor hp check
#title @a actionbar {"score":{"name":"@s","objective":"Status.Health"}}