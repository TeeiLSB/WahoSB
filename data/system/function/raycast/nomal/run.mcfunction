execute unless block ~ ~ ~ #minecraft:air run function system:raycast/nomal/hit
scoreboard players remove @s ray_steps 1
execute if block ~ ~ ~ #minecraft:air if score @s ray_steps matches 0 run function system:raycast/nomal/hit
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.1 run function system:raycast/nomal/run
