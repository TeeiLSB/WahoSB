# playerを追尾
execute if score $F7Storm Tick matches 560.. run function system:dungeon/f7/p2/storm/follow_player

# pillar crush check
function system:dungeon/f7/p2/storm/crush_check


# なんかバリアみたいなのなくす
execute store result score #stormhealth Temporary run data get entity @s Health
execute if score #stormhealth Temporary matches ..151 run data modify entity @s Health set value 300f
scoreboard players reset #stormhealth Temporary


# 180m以下だよ!!
    # hp比較
    function system:api/big_score/compare/first {"l_as":"@s","l_obj":"Status.Health","b":"0","m":"180","k":"0","n":"0"}
    # まだenrageしてなくて180以下だったらenrageを1にする
    execute if score $StormEnraged F7.Gimmick.Status matches 0 unless score $StormPhase F7.Gimmick.Status matches 1 if score #CompareResult BigScore matches ..0 run function system:dungeon/f7/p2/storm/25m_trigger
    # enrageが1だったらhpを180mに固定
    execute if score $StormEnraged F7.Gimmick.Status matches 1 run scoreboard players set @s Status.Health.b 0
    execute if score $StormEnraged F7.Gimmick.Status matches 1 run scoreboard players set @s Status.Health.m 180
    execute if score $StormEnraged F7.Gimmick.Status matches 1 run scoreboard players set @s Status.Health.k 0
    execute if score $StormEnraged F7.Gimmick.Status matches 1 run scoreboard players set @s Status.Health 0
    # hpを更新
    function system:api/big_score/normalize/first {"as":"@s","obj":"Status.Health"}

# 死んだよ(泣)
    # hp比較
    function system:api/big_score/compare/first {"l_as":"@s","l_obj":"Status.Health","b":"0","m":"0","k":"0","n":"0"}
    # 0以下だったら死んだときの処理 (Phaseが1のときのみ(phaseは180mtriggerで1になってるはずー))
    execute if score $StormPhase F7.Gimmick.Status matches 1 if score #CompareResult BigScore matches ..0 run function system:dungeon/f7/p2/storm/death_trigger


    # bossbar
scoreboard players operation #BossHPRate Temporary = @s Status.Health.m
execute store result bossbar wahosb:f7 value run scoreboard players get #BossHPRate Temporary
scoreboard players reset #BossHPRate Temporary