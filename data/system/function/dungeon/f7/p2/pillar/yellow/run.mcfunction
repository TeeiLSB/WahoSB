execute if score $YellowPillarLevel F7.Gimmick.Status matches 4..23 run playsound block.piston.contract master @a ~ ~ ~ 1 0.75


# 23以下でturn0(下がるほう)ならscoreを1ずつさげる
execute if score $YellowPillarLevel F7.Gimmick.Status matches ..26 if score $YellowPillarTurn F7.Gimmick.Status matches 0 run scoreboard players remove $YellowPillarLevel F7.Gimmick.Status 1

# 0以上でturn1(上がるほう)ならscoreを1ずつあげる
execute if score $YellowPillarLevel F7.Gimmick.Status matches 0.. if score $YellowPillarTurn F7.Gimmick.Status matches 1 run scoreboard players add $YellowPillarLevel F7.Gimmick.Status 1

#  0になったら上げるモードにするためturn1にする
execute if score $YellowPillarLevel F7.Gimmick.Status matches ..0 if score $YellowPillarTurn F7.Gimmick.Status matches 0 run \
    scoreboard players set $YellowPillarTurn F7.Gimmick.Status 1

#  23..になったら下げるモードにするためturn0にする
execute if score $YellowPillarLevel F7.Gimmick.Status matches 26.. if score $YellowPillarTurn F7.Gimmick.Status matches 1 run \
    scoreboard players set $YellowPillarTurn F7.Gimmick.Status 0



execute if score $YellowPillarLevel F7.Gimmick.Status matches ..23 run fill 43 188 62 49 169 68 air
scoreboard players operation #Yellow.PillarLeft F7.Gimmick.Status = $YellowPillarLevel F7.Gimmick.Status
execute if score $YellowPillarLevel F7.Gimmick.Status matches ..23 positioned 43 188 62 run function system:dungeon/f7/p2/pillar/yellow/fill



# can crush storm
execute if score $YellowPillarTurn F7.Gimmick.Status matches 1 run scoreboard players set $Yellow.StormCanCrush F7.Gimmick.Status 60
