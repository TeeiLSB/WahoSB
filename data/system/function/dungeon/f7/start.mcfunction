# reset
 kill @e[tag=F7.Reset]

 scoreboard players reset $F7tick Tick

# score reset
 scoreboard players reset * F7.Gimmick.Status

# clear tag
 tag @e remove F7.HasCrystal
 tag @e remove F7.AgroWither

 tp @a 73.5 221 13.5 0 0
 execute positioned 73.5 221 13.5 run function system:bot/summon/berserk/summon
 execute positioned 73.5 221 13.5 run function system:bot/summon/mage/summon
 #execute as @a at @s run spectate @n[type=mannequin,tag=Bot] @s

# bossbar
 # clear previous one
    bossbar remove wahosb:f7
 # init
  bossbar add wahosb:f7 {"text":"§e《§cMaxor§e》"}
  bossbar set wahosb:f7 players @a
  bossbar set wahosb:f7 color yellow
  bossbar set wahosb:f7 max 100
  bossbar set wahosb:f7 value 100

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



