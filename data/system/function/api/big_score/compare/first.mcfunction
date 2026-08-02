# reset
scoreboard players set #CompareResult BigScore 0

# 左側
$scoreboard players operation $BS.B BigScore = $(l_as) $(l_obj).b
$scoreboard players operation $BS.M BigScore = $(l_as) $(l_obj).m
$scoreboard players operation $BS.K BigScore = $(l_as) $(l_obj).k
$scoreboard players operation $BS BigScore = $(l_as) $(l_obj)

#　右側
$scoreboard players set #CMP.B BigScore $(b)
$scoreboard players set #CMP.M BigScore $(m)
$scoreboard players set #CMP.K BigScore $(k)
$scoreboard players set #CMP BigScore $(n)

# 実行
function system:api/big_score/compare/run
