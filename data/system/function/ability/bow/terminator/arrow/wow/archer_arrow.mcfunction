# duplex 
tag @s add Shooter
execute at @s positioned ~ ~1.6 ~ positioned ^ ^ ^ rotated as @s rotated ~ ~ summon arrow run function system:ability/bow/terminator/arrow/init
tag @s remove Shooter

tag @s remove Player.ArcherArrowActivive
