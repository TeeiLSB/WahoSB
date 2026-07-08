
execute if score @s CD.default matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet run function system:raycast/start_ray


execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 3

# reset
advancement revoke @s only system:ability/right_click/aspect_of_the_void_shift