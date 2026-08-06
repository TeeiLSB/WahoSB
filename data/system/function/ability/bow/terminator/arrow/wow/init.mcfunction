scoreboard players set $MotionPower Temporary 250

data modify entity @s Rotation set from entity @n[tag=Shooter] Rotation
data modify entity @s Owner set from entity @n[tag=Shooter] UUID

function system:ability/bow/terminator/arrow/rotation_fix

data modify entity @s PierceLevel set value 0
data merge entity @s {damage:0.00000001d,pickup:0}

function system:ability/bow/terminator/arrow/tp_arrow

tag @s add CustomArrow

function system:core/motion/apply
