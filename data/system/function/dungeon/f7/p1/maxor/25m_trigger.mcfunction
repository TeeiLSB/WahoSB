kill @e[type=item_display,tag=UnclaimbleCrstal]

scoreboard players reset $LeftCrystal
scoreboard players reset $RightCrystal
scoreboard players reset $CrystalCount

title @a title ""
title @a subtitle "§c⚠ Maxor is Enraged! ⚠"


scoreboard players set $MaxorEnraged F7.Gimmick.Status 1
scoreboard players set $MaxorPhase F7.Gimmick.Status 1


# beacon reset
 setblock 73 222 73 black_stained_glass
 setblock 73 223 73 black_stained_glass
 setblock 73 224 73 black_stained_glass

 # set crystal
 execute positioned 64 238 50 run function system:dungeon/f7/p1/crystal/summon
 execute positioned 82 238 50 run function system:dungeon/f7/p1/crystal/summon