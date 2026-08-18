# shadow warp
execute as @s[tag=!InF7] if score @s CD.default matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet run function system:raycast/nomal/start {"reach":"100"}

tag @s add This
# implosion
execute if score @s CD.default matches 0 run playsound entity.generic.explode master @s ~ ~ ~ 0.5 1
execute if score @s CD.default matches 0 as @e[type=!player,type=!mannequin,type=!item,type=!arrow,type=!interaction,type=!item_display,type=!block_display, distance=..6,limit=200,sort=nearest] at @s run function system:ability/ability_tick/hyperion/hyperion_hitted
tag @s remove This

# wither shield
execute if score @s CD.default matches 0 unless score @s CD.hyperion matches 1.. run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.3 0.75
execute if score @s CD.default matches 0 unless score @s CD.hyperion matches 1.. run effect give @s absorption 5 3 false
execute if score @s CD.default matches 0 unless score @s CD.hyperion matches 1.. run effect give @s resistance 5 0 false
execute if score @s CD.default matches 0 unless score @s CD.hyperion matches 1.. run scoreboard players set @s CD.hyperion 100

# 暴発防止
execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 4


# reset
advancement revoke @s only system:ability/right_click/hyperion