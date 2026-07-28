tellraw @a ["§b",{"selector":"@s"},"§a picked up an §bEnergy Crystal§a!"]
execute as @n[type=interaction,tag=InteractionCrystal.This,distance=0] on vehicle run kill @s
execute as @n[type=interaction,tag=InteractionCrystal.This,distance=0] run kill @s

tag @s add F7.HasCrystal