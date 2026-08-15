execute if score $BluePillarLevel F7.Gimmick.Status matches 4..23 run playsound block.piston.contract master @a ~ ~ ~ 1 0.75


# 23以下でturn0(下がるほう)ならscoreを1ずつさげる
execute if score $BluePillarLevel F7.Gimmick.Status matches ..26 if score $BluePillarTurn F7.Gimmick.Status matches 0 run scoreboard players remove $BluePillarLevel F7.Gimmick.Status 1

# 0以上でturn1(上がるほう)ならscoreを1ずつあげる
execute if score $BluePillarLevel F7.Gimmick.Status matches 0.. if score $BluePillarTurn F7.Gimmick.Status matches 1 run scoreboard players add $BluePillarLevel F7.Gimmick.Status 1

#  0になったら上げるモードにするためturn1にする
execute if score $BluePillarLevel F7.Gimmick.Status matches ..0 if score $BluePillarTurn F7.Gimmick.Status matches 0 run \
    scoreboard players set $BluePillarTurn F7.Gimmick.Status 1

#  23..になったら下げるモードにするためturn0にする
execute if score $BluePillarLevel F7.Gimmick.Status matches 26.. if score $BluePillarTurn F7.Gimmick.Status matches 1 run \
    scoreboard players set $BluePillarTurn F7.Gimmick.Status 0



execute if score $BluePillarLevel F7.Gimmick.Status matches ..23 run fill 97 188 62 103 169 68 air
scoreboard players operation #Blue.PillarLeft F7.Gimmick.Status = $BluePillarLevel F7.Gimmick.Status
execute if score $BluePillarLevel F7.Gimmick.Status matches ..23 positioned 97 188 62 run function system:dungeon/f7/p2/pillar/blue/fill



# can crush storm
execute if score $BluePillarTurn F7.Gimmick.Status matches 1 run scoreboard players set $Blue.StormCanCrush F7.Gimmick.Status 60