tag @s add InteractionCrystal.This
execute at @s on target unless entity @s[tag=F7.HasCrystal] run function system:dungeon/f7/p1/crystal/pickuped
tag @s remove InteractionCrystal.This

execute on vehicle at @s run rotate @s ~7 0