


tag @s add This
execute if score @s CD.default matches 0 anchored eyes positioned ^ ^ ^ run execute summon item_display run function system:ability/sword/misc/axe_of_the_shredded_init
tag @s remove This

# 暴発防止
execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 10

# reset
advancement revoke @s only system:ability/right_click/axe_of_the_shredded