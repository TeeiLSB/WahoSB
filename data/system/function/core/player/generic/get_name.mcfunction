execute in overworld run loot replace block 0 0 0 container.0 loot system:generic/get_name
execute in overworld run data modify storage lib: generic.name set from block 0 0 0 Items[0].components."minecraft:profile".name
function system:core/player/generic/convert_to_compound with storage lib: generic.name
execute in overworld run data remove block 0 0 0 Items