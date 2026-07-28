# left crystal
execute unless score $LeftCrystal F7.Gimmick.Status matches 1 positioned 94 224 41 if entity @s[distance=..3] run function system:dungeon/f7/p1/crystal/place/left

# right crystal
execute unless score $RightCrystal F7.Gimmick.Status matches 1 positioned 52 224 41 if entity @s[distance=..3] run function system:dungeon/f7/p1/crystal/place/right
