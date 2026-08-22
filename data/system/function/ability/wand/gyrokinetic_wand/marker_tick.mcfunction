tag @s add This
execute as @e[tag=!Bot,type=!player,distance=..10,tag=Mob.CanGyro] at @s run function system:ability/wand/gyrokinetic_wand/grav
tag @s remove This


scoreboard players operation #sound_split_gyro Temporary = @s AutoKill
scoreboard players operation #sound_split_gyro Temporary %= #2 Constant

execute if score #sound_split_gyro Temporary matches 0 if score @s AutoKill matches 50.. run playsound entity.enderman.teleport ambient @a ^ ^ ^ 1 2

scoreboard players reset #sound_split_gyro Temporary