execute if score @s CD.default matches 0 run playsound entity.arrow.shoot master @s ~ ~ ~ 0.3 1.2


execute if score @s CD.default matches 0 run tag @s add Shooter

execute if score @s CD.default matches 0 at @s anchored eyes positioned ^ ^ ^1.75 rotated as @s rotated ~ ~ summon arrow run function system:ability/bow/terminator/arrow/init
execute if score @s CD.default matches 0 at @s anchored eyes positioned ^ ^ ^1.75 rotated as @s rotated ~4 ~1.75 summon arrow run function system:ability/bow/terminator/arrow/init
execute if score @s CD.default matches 0 at @s anchored eyes positioned ^ ^ ^1.75 rotated as @s rotated ~-4 ~1.75 summon arrow run function system:ability/bow/terminator/arrow/init
execute if score @s CD.default matches 0 run tag @s remove Shooter

# playerがduplexな場合

execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 5





advancement revoke @s only system:ability/right_click/terminator