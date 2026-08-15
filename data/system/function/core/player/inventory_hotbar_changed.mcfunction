# dungeon stat boost
 function system:core/player/stats/calculate_dungeon_stat_boost/main




# refresh mainhand
tag @s add FromMainhand
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function system:item/lore/main/refresh_lore
item replace entity @s weapon.mainhand from block 0 0 0 container.0
data remove block 0 0 0 Items
tag @s remove FromMainhand
# refresh armors
execute if score @s PlayerRefreshTimer matches 0 run function system:item/lore/refresh_trigger








function system:core/player/stats/combat_damage_calc/main

