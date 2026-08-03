$scoreboard players operation $BS.B BigScore = $(as) $(obj).b
$scoreboard players operation $BS.M BigScore = $(as) $(obj).m
$scoreboard players operation $BS.K BigScore = $(as) $(obj).k
$scoreboard players operation $BS BigScore = $(as) $(obj)

function system:api/big_score/normalize/run

$scoreboard players operation $(as) $(obj).b = $BS.B BigScore
$scoreboard players operation $(as) $(obj).m = $BS.M BigScore
$scoreboard players operation $(as) $(obj).k = $BS.K BigScore
$scoreboard players operation $(as) $(obj) = $BS BigScore
