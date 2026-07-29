function system:ability/ability_tick/axe_of_the_shredded/animation

tag @s add AotsThrower
execute at @s unless entity @s[tag=Aots.Hitted] positioned ~-0.125 ~-0.125 ~-0.125 as @e[dx=0,type=!item_display,type=!player,type=!mannequin,type=!item,limit=1,sort=nearest,type=!arrow] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] run function system:ability/ability_tick/axe_of_the_shredded/hit
execute at @s unless entity @s[tag=Aots.Hitted] unless block ^ ^ ^0.5 #teil:bot_depth_check run tag @s add Aots.Hitted
execute at @s unless entity @s[tag=Aots.Hitted] run tp @s ^ ^ ^0.5
tag @s remove AotsThrower

tag @s add AotsThrower
execute at @s unless entity @s[tag=Aots.Hitted] positioned ~-0.125 ~-0.125 ~-0.125 as @e[dx=0,type=!item_display,type=!player,type=!mannequin,type=!item,limit=1,sort=nearest,type=!arrow] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] run function system:ability/ability_tick/axe_of_the_shredded/hit
execute at @s unless entity @s[tag=Aots.Hitted] unless block ^ ^ ^0.5 #teil:bot_depth_check run tag @s add Aots.Hitted
execute at @s unless entity @s[tag=Aots.Hitted] run tp @s ^ ^ ^0.5
tag @s remove AotsThrower


execute if entity @s[tag=Aots.Hitted] run scoreboard players set @s AutoKill 0
tag @s[tag=Aots.Hitted] remove Aots.Hitted