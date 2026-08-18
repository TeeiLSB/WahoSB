# dungeon stat boost
 function system:core/player/stats/calculate_dungeon_stat_boost/main

# mainhand
execute if score @s PlayerRefreshTimer matches 0 run function system:item/lore/refresh_mainhand_trigger
# refresh armors
execute if score @s PlayerRefreshTimer.Armor matches 0 run function system:item/lore/refresh_trigger







# a
function system:core/player/stats/combat_damage_calc/main

advancement revoke @s only system:ability/player/inv_changed

