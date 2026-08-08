execute if score @s CD.default matches 0 run playsound entity.arrow.shoot master @s ~ ~ ~ 0.3 1.2

execute if score @s CD.default matches 0 run tag @s add Shooter
execute if score @s CD.default matches 0 at @s positioned ~ ~1.6 ~ positioned ^ ^ ^ rotated as @s rotated ~ ~ summon arrow run function system:ability/bow/terminator/arrow/init
execute if score @s CD.default matches 0 at @s positioned ~ ~1.6 ~ positioned ^ ^ ^ rotated as @s rotated ~4.5 ~1.75 summon arrow run function system:ability/bow/terminator/arrow/init
execute if score @s CD.default matches 0 at @s positioned ~ ~1.6 ~ positioned ^ ^ ^ rotated as @s rotated ~-4.5 ~1.75 summon arrow run function system:ability/bow/terminator/arrow/init
execute if score @s CD.default matches 0 run tag @s remove Shooter
execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 5

tag @s add Player.DuplexActivive
#tag @s[tag=Dungeon.Class.Archer] add Player.ArcherArrowActivive
