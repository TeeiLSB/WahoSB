scoreboard players set $MotionPower Temporary 300

function system:ability/bow/terminator/arrow/rotation_fix


data modify entity @s Owner set from entity @n[tag=Shooter] UUID

data modify entity @s PierceLevel set value 1
data merge entity @s {damage:0.1f,pickup:0,Invulnerable:1b,LeftOwner:true}

function system:ability/bow/terminator/arrow/tp_arrow

tag @s add CustomArrow


function system:core/motion/apply
