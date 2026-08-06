execute as @e[type=arrow,nbt={inGround:1b}] at @s run kill @s
execute as @e[type=arrow,tag=CustomArrow,nbt={life:60s}] at @s run kill @s

execute as @e[type=#teil:players,scores={CD.default=2},tag=Player.DuplexActivive] at @s run function system:ability/bow/terminator/arrow/wow/duplex
execute as @e[type=#teil:players,scores={CD.default=1},tag=Player.ArcherArrowActivive] at @s run function system:ability/bow/terminator/arrow/wow/archer_arrow