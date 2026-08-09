# refresh item lore and name
 execute if data entity @s SelectedItem.components."minecraft:custom_data".WeaponType run function system:item/lore/main/refresh_lore

function system:core/player/stats/combat_damage_calc/main

# reset
advancement revoke @s only system:player/inventory_changed