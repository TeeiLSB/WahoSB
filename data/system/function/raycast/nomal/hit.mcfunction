scoreboard players set @s ray_success 1

execute align xyz run summon marker ~ ~ ~ {Tags:["tp_check"]}
execute store result score #marker_pos Temporary run data get entity @n[tag=tp_check,type=marker] Pos[1] 10
execute store result score #player_pos Temporary run data get entity @s Pos[1] 10

# markerの方が高かったら
execute if score #marker_pos Temporary > #player_pos Temporary run execute positioned ^ ^ ^-1 align xyz if block ~0.5 ~ ~0.5 air if block ~0.5 ~-1 ~0.5 air run tp @s ~0.5 ~-1 ~0.5

# playerの方が高かったら
execute if score #marker_pos Temporary <= #player_pos Temporary run execute positioned ^ ^ ^-1 align xyz if block ~0.5 ~ ~0.5 air if block ~0.5 ~1 ~0.5 air run tp @s ~0.5 ~ ~0.5



scoreboard players reset #marker_pos Temporary
scoreboard players reset #player_pos Temporary
kill @e[type=marker,tag=tp_check]

playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 1