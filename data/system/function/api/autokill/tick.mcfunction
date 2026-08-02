# hp =0 = die
execute as @e[type=!#teil:players,tag=!CantAutoKill] run function system:api/autokill/check
execute as @e[scores={AutoKill=1..}] run scoreboard players remove @s AutoKill 1
execute as @e[scores={AutoKill=..0}] run function system:api/autokill/execute