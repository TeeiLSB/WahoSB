execute as @e[scores={AutoKill=1..}] run scoreboard players remove @s AutoKill 1
execute as @e[scores={AutoKill=..0}] run tp @s ~ -1024 ~
execute as @e[scores={AutoKill=..0}] run kill @s