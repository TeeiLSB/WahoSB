
data modify entity @s Motion set value [0.0,0.0,0.0]
execute unless score #StormCrushed F7.Gimmick.Status matches 1 unless entity @n[type=#teil:players,tag=F7.AgroWither] facing entity @n[type=#teil:players] eyes rotated ~ ~-5 run rotate @s ~ ~
execute unless score #StormCrushed F7.Gimmick.Status matches 1 if entity @n[type=#teil:players,tag=F7.AgroWither] facing entity @n[type=#teil:players,tag=F7.AgroWither] eyes rotated ~ ~-5 run rotate @s ~ ~

execute unless entity @n[type=#teil:players,distance=..6] unless score #StormCrushed F7.Gimmick.Status matches 1 run tp @s ^ ^ ^0.6
execute if entity @n[type=#teil:players,distance=6..,tag=F7.AgroWither] unless score #StormCrushed F7.Gimmick.Status matches 1 run tp @s ^ ^ ^0.6

# agroは2人以上だめ！
execute store result score #agro_check Temporary if entity @e[type=#teil:players, tag=F7.AgroWither]
execute at @s if score #agro_check Temporary matches 2.. run function system:dungeon/f7/p1/maxor/remove_agro_tag
scoreboard players reset #agro_check Temporary