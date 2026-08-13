# fordebug pls remove this in real run
 scoreboard players reset * F7.Gimmick.Status


# phase set
scoreboard players set $F7.Phase F7.Gimmick.Status 2


# kill storm
scoreboard players set @e[type=wither,tag=Mob.Dungeon.Boss.Storm] AutoKill 1

tag @e[type=#teil:players] remove F7.AgroWither

# pillar 
function system:dungeon/f7/p2/pillar/start

# reset 
scoreboard players reset #StormCrushed F7.Gimmick.Status

# bossbar
 # clear previous one
    bossbar remove wahosb:f7
 # init
  bossbar add wahosb:f7 {"text":"§e《§cStorm§e》"}
  bossbar set wahosb:f7 players @a
  bossbar set wahosb:f7 color yellow
  bossbar set wahosb:f7 max 400
  bossbar set wahosb:f7 value 400

# storm
execute positioned 102 184 53 run execute summon wither run function asset:mobs/dungeon/f7/storm