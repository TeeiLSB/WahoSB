
execute if score @s CD.default matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet run function system:raycast/nomal/start {"reach":"120"}
effect give @s slow_falling 1 0 true
effect clear @s slow_falling

execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 4

# reset
advancement revoke @s only system:ability/right_click/aspect_of_the_void