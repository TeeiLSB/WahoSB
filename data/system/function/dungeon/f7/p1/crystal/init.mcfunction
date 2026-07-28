data merge entity @s {item:{id:"end_crystal"},transformation:{"scale":[2.0,2.0,2.0],translation:[0,1,0]},teleport_duration:1}
tag @s add Crystal.This
execute summon interaction run function system:dungeon/f7/p1/crystal/interaction_init
tag @s remove Crystal.This


tag @s add F7.Reset

