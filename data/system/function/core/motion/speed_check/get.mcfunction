execute store result score #XPos Temporary run data get entity @s Pos[0] 1000
execute store result score #ZPos Temporary run data get entity @s Pos[2] 1000

scoreboard players operation @s PreXPos -= #XPos Temporary
scoreboard players operation @s PreZPos -= #ZPos Temporary

execute if score @s PreXPos matches ..-1 run scoreboard players operation @s PreXPos *= #-1 Constant
execute if score @s PreZPos matches ..-1 run scoreboard players operation @s PreZPos *= #-1 Constant

scoreboard players operation @s PreXPos += @s PreZPos


scoreboard players operation @s WalkSpeed = @s PreXPos

#title @a actionbar {"score":{"name":"@s","objective":"WalkSpeed"}}


scoreboard players operation @s PreXPos = #XPos Temporary
scoreboard players operation @s PreZPos = #ZPos Temporary

