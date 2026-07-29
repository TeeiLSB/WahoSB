tag @s add Bot.GoalMarker
scoreboard players set @s AutoKill 1000
tag @s add F7.Reset
execute store result score @s Bot.GoalMarkerID run data get entity @n[type=mannequin,tag=Bot,tag=This] UUID[0]