# hp =0 = die
scoreboard players set @e[type=!player,scores={Status.Health=..0},tag=!CantAutoKill] AutoKill 0

execute as @e[scores={AutoKill=1..}] run scoreboard players remove @s AutoKill 1
execute as @e[scores={AutoKill=..0}] run function system:api/autokill/execute