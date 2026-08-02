# 初期値は等しい
scoreboard players set #CompareResult BigScore 0

# B
execute if score $BS.B BigScore > #CMP.B BigScore run scoreboard players set #CompareResult BigScore 1
execute if score $BS.B BigScore < #CMP.B BigScore run scoreboard players set #CompareResult BigScore -1

# Bが等しいならM
execute if score #CompareResult BigScore matches 0 if score $BS.B BigScore = #CMP.B BigScore if score $BS.M BigScore > #CMP.M BigScore run scoreboard players set #CompareResult BigScore 1
execute if score #CompareResult BigScore matches 0 if score $BS.B BigScore = #CMP.B BigScore if score $BS.M BigScore < #CMP.M BigScore run scoreboard players set #CompareResult BigScore -1

# B,Mが等しいならK
execute if score #CompareResult BigScore matches 0 if score $BS.B BigScore = #CMP.B BigScore if score $BS.M BigScore = #CMP.M BigScore if score $BS.K BigScore > #CMP.K BigScore run scoreboard players set #CompareResult BigScore 1
execute if score #CompareResult BigScore matches 0 if score $BS.B BigScore = #CMP.B BigScore if score $BS.M BigScore = #CMP.M BigScore if score $BS.K BigScore < #CMP.K BigScore run scoreboard players set #CompareResult BigScore -1

# B,M,Kが等しいならNormal
execute if score #CompareResult BigScore matches 0 if score $BS.B BigScore = #CMP.B BigScore if score $BS.M BigScore = #CMP.M BigScore if score $BS.K BigScore = #CMP.K BigScore if score $BS BigScore > #CMP BigScore run scoreboard players set #CompareResult BigScore 1
execute if score #CompareResult BigScore matches 0 if score $BS.B BigScore = #CMP.B BigScore if score $BS.M BigScore = #CMP.M BigScore if score $BS.K BigScore = #CMP.K BigScore if score $BS BigScore < #CMP BigScore run scoreboard players set #CompareResult BigScore -1