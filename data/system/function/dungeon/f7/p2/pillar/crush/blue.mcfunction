tag @s add Dungeon.F7.Storm.Crushed
tag @s remove Invulnerable

scoreboard players set $StormEnraged F7.Gimmick.Status 0

scoreboard players set #StormCrushed F7.Gimmick.Status 1 


scoreboard players set #BluePillarUsed F7.Gimmick.Status 1
rotate @s ~ 90

clone 61 221 162 67 227 168 97 176 62

fill 97 169 62 103 175 68 air


execute store result score #Ypos Temporary run data get entity @s Pos[1]
execute if score #Ypos Temporary matches 179.. run clone 61 221 162 67 227 168 97 182 62
execute if score #Ypos Temporary matches 179.. run fill 97 169 62 103 183 68 air
scoreboard players reset #Ypos Temporary
