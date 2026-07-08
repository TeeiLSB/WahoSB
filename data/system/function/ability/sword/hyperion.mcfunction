# shadow warp
execute if score @s CD.default matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet run function system:raycast/nomal/start {"reach":"100"}

# implosion
execute if score @s CD.default matches 0 run playsound entity.generic.explode master @s ~ ~ ~ 0.5 1
execute if score @s CD.default matches 0 as @e[type=!player,distance=..5,limit=200,sort=nearest] run damage @s[type=!item,type=!experience_orb,type=!item_frame] 20 magic by @p


# wither shield
execute if score @s CD.default matches 0 unless score @s CD.hyperion matches 1.. run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.6 0.75
execute if score @s CD.default matches 0 unless score @s CD.hyperion matches 1.. run effect give @s absorption 5 3 false
execute if score @s CD.default matches 0 unless score @s CD.hyperion matches 1.. run effect give @s resistance 5 0 false
execute if score @s CD.default matches 0 unless score @s CD.hyperion matches 1.. run scoreboard players set @s CD.hyperion 100

# 暴発防止
execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 3


# reset
advancement revoke @s only system:ability/right_click/hyperion