scoreboard players set $MotionPower Temporary 300


data modify entity @s Rotation set from entity @n[tag=Shooter] Rotation
data modify entity @s Owner set from entity @n[tag=Shooter] UUID

data modify entity @s PierceLevel set value 0
data merge entity @s {damage:1,pickup:0}


tag @s add CustomArrow

function system:core/motion/apply
damage @s 0.0 generic
