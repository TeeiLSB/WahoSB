execute if score $GreenPillarLevel F7.Gimmick.Status matches 4..23 run playsound block.piston.contract master @a ~ ~ ~ 1 0.75






# 23以下でturn0(下がるほう)ならscoreを1ずつさげる
execute if score $GreenPillarLevel F7.Gimmick.Status matches ..26 if score $GreenPillarTurn F7.Gimmick.Status matches 0 run scoreboard players remove $GreenPillarLevel F7.Gimmick.Status 1

# 0以上でturn1(上がるほう)ならscoreを1ずつあげる
execute if score $GreenPillarLevel F7.Gimmick.Status matches 0.. if score $GreenPillarTurn F7.Gimmick.Status matches 1 run scoreboard players add $GreenPillarLevel F7.Gimmick.Status 1

#  0になったら上げるモードにするためturn1にする
execute if score $GreenPillarLevel F7.Gimmick.Status matches ..0 if score $GreenPillarTurn F7.Gimmick.Status matches 0 run \
    scoreboard players set $GreenPillarTurn F7.Gimmick.Status 1

#  23..になったら下げるモードにするためturn0にする
execute if score $GreenPillarLevel F7.Gimmick.Status matches 26.. if score $GreenPillarTurn F7.Gimmick.Status matches 1 run \
    scoreboard players set $GreenPillarTurn F7.Gimmick.Status 0



execute if score $GreenPillarLevel F7.Gimmick.Status matches ..23 run fill 43 188 38 49 169 44 air
scoreboard players operation #Green.PillarLeft F7.Gimmick.Status = $GreenPillarLevel F7.Gimmick.Status
execute if score $GreenPillarLevel F7.Gimmick.Status matches ..23 positioned 43 188 38 run function system:dungeon/f7/p2/pillar/green/fill

# can crush storm
scoreboard players set $Green.StormCanCrush F7.Gimmick.Status 60