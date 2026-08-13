

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
execute if score $CrystalCount F7.Gimmick.Status matches 2 positioned 73 226 73 if entity @s[distance=..3.5] run tag @s remove Invulnerable
execute if score $CrystalCount F7.Gimmick.Status matches 2 positioned 73 226 73 if entity @s[distance=..3.5] run rotate @s ~ 90
execute if score $CrystalCount F7.Gimmick.Status matches 2 positioned 73 226 73 if entity @s[distance=..3.5] run scoreboard players set #MaxorHittedLaser F7.Gimmick.Status 1
execute if score $MaxorEnraged F7.Gimmick.Status matches 1 run tag @s add Invulnerable

# 25m以下だよ!!
    # hp比較
    function system:api/big_score/compare/first {"l_as":"@s","l_obj":"Status.Health","b":"0","m":"20","k":"0","n":"0"}
    # まだenrageしてなくて25以下だったらenrageを1にする
    execute if score $MaxorEnraged F7.Gimmick.Status matches 0 unless score $MaxorPhase F7.Gimmick.Status matches 1 if score #CompareResult BigScore matches ..0 run function system:dungeon/f7/p1/maxor/25m_trigger
    # enrageが1だったらhpを25mに固定
    execute if score $MaxorEnraged F7.Gimmick.Status matches 1 run scoreboard players set @s Status.Health.b 0
    execute if score $MaxorEnraged F7.Gimmick.Status matches 1 run scoreboard players set @s Status.Health.m 20
    execute if score $MaxorEnraged F7.Gimmick.Status matches 1 run scoreboard players set @s Status.Health.k 0
    execute if score $MaxorEnraged F7.Gimmick.Status matches 1 run scoreboard players set @s Status.Health 0
    # hpを更新
    function system:api/big_score/normalize/first {"as":"@s","obj":"Status.Health"}

# 死んだよ(泣)
    # hp比較
    function system:api/big_score/compare/first {"l_as":"@s","l_obj":"Status.Health","b":"0","m":"0","k":"0","n":"0"}
    # 0以下だったら死んだときの処理 (Phaseが1のときのみ(phaseは25mtriggerで1になってるはずー))
    execute if score $MaxorPhase F7.Gimmick.Status matches 1 if score #CompareResult BigScore matches ..0 run function system:dungeon/f7/p1/maxor/death_trigger





# enrageしているときは#MaxorHittedLaserをreset
execute if score $MaxorEnraged F7.Gimmick.Status matches 1 run scoreboard players reset #MaxorHittedLaser F7.Gimmick.Status

# bossbar
scoreboard players operation #BossHPRate Temporary = @s Status.Health.m
execute store result bossbar wahosb:f7 value run scoreboard players get #BossHPRate Temporary
execute if score @s Status.Health.m matches 100 run bossbar set wahosb:f7 value 100
scoreboard players reset #BossHPRate Temporary

# maxor hp check
#title @a actionbar {"score":{"name":"@s","objective":"Status.Health"}}