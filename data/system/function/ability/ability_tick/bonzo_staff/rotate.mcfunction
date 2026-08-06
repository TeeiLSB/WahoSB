data modify storage player: rotation.x set from entity @s Rotation[1]
data modify storage player: rotation.y set from entity @s Rotation[0]

tag @s add This
execute as @n[type=item_display,tag=Item.BonzoStaff.Balloon] at @s run rotate @s facing entity @p[tag=This]
execute as @n[type=item_display,tag=Item.BonzoStaff.Balloon] at @s run rotate @p[tag=This] ~ -12
tag @s remove This


