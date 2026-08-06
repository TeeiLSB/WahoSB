execute store result score #XPos Temporary run data get entity @s Pos[0] 1000
execute store result score #ZPos Temporary run data get entity @s Pos[2] 1000

scoreboard players operation #PreXPos Temporary -= #XPos Temporary
scoreboard players operation #PreZPos Temporary -= #ZPos Temporary

execute if score #PreXPos Temporary matches ..-1 run scoreboard players operation #PreXPos Temporary *= #-1 Constant
execute if score #PreZPos Temporary matches ..-1 run scoreboard players operation #PreZPos Temporary *= #-1 Constant

scoreboard players operation #PreXPos Temporary += #PreZPos Temporary


scoreboard players operation @s WalkSpeed = #PreXPos Temporary

#title @a actionbar {"score":{"name":"@s","objective":"WalkSpeed"}}


scoreboard players operation #PreXPos Temporary = #XPos Temporary
scoreboard players operation #PreZPos Temporary = #ZPos Temporary

