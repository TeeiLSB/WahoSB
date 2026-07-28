# reset
 kill @e[tag=F7.Reset]

# score reset
 scoreboard players reset * F7.Gimmick.Status

# clear tag
 tag @a remove F7.HasCrystal

# beacon reset
 setblock 73 222 73 black_stained_glass
 setblock 73 223 73 black_stained_glass
 setblock 73 224 73 black_stained_glass

# set crystal
 execute positioned 64 238 50 run function system:dungeon/f7/p1/crystal/summon
 execute positioned 82 238 50 run function system:dungeon/f7/p1/crystal/summon

# floor set to p2

clone 69 220 152 77 220 169 69 220 32

# summon maxor
execute positioned 73 228 53 summon wither run function asset:mobs/dungeon/f7/maxor

