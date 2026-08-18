
execute if score @s CD.default matches 0 run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 0.7 1.5


execute if score @s CD.default matches 0 anchored eyes positioned ^ ^ ^ run execute summon item_display run function system:ability/ability_tick/jerry_chine_gun/init/display_init



# 暴発防止
execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 3


# reset
advancement revoke @s only system:ability/right_click/jerry_chine_gun