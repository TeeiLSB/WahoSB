
execute if score @s CD.default matches 0 run playsound minecraft:entity.ghast.ambient master @s ~ ~ ~ 1 2


execute if score @s CD.default matches 0 anchored eyes positioned ^ ^ ^ run execute summon item_display run function system:ability/sword/bonzo_staff_init



# 暴発防止
execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 3


# reset
advancement revoke @s only system:ability/right_click/bonzo_staff