data merge entity @s {transformation:{left_rotation:[0.5720614f, 0.41562694f, 0.5720614f, 0.41562694f],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[1,1,1]},item:{id:"diamond_axe",count:1},teleport_duration:1}

tag @s add Item.Aots.Axe
rotate @s ~ ~
scoreboard players set @s AutoKill 120

scoreboard players operation @s Status.MeleeDamage = @n[type=#teil:players,tag=This] Status.MeleeDamage

execute store result score @s OwnerUUID run data get entity @n[tag=This] UUID[0]
