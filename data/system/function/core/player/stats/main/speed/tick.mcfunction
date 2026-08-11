# speed capにあわせる
scoreboard players operation #SPEED Temporary = @s Status.Speed
scoreboard players operation #SPEED Temporary < @s Status.SpeedCap

execute store result storage temp: speed.value float 0.001 run scoreboard players get #SPEED Temporary
function system:core/player/stats/main/speed/apply with storage temp: speed
data remove storage temp: speed