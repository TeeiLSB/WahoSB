data modify storage player: rotation.x set from entity @s Rotation[1]
data modify storage player: rotation.y set from entity @s Rotation[0]

#execute at @n[type=item_display,tag=Item.BonzoStaff.Balloon] run say roated as me!
#execute at @n[type=item_display,tag=Item.BonzoStaff.Balloon] run rotate @s ~ ~

rotate @s ~180 0
