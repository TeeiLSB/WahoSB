# dungeon stat boost
 function system:core/player/stats/calculate_dungeon_stat_boost/main


# refresh item lore and name
 execute if data entity @s SelectedItem.components."minecraft:custom_data".WeaponType run function system:item/lore/main/refresh_lore

function system:core/player/stats/combat_damage_calc/main

