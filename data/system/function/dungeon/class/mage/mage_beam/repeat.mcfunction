particle firework
tag @s add Beamer
execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[dx=0,type=!player,type=!item,limit=1,sort=nearest] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] run function system:dungeon/class/mage/mage_beam/hit_entity
tag @s remove Beamer


scoreboard players add @s Dungeon.Class.Mage.BeamRange 1

execute unless entity @n[tag=MageBeam.Hit_Check] if score @s Dungeon.Class.Mage.BeamRange matches ..60 positioned ^ ^ ^0.5 if block ^ ^ ^0.5 air run \
    function system:dungeon/class/mage/mage_beam/repeat

tag @e[tag=MageBeam.Hit_Check] remove MageBeam.Hit_Check