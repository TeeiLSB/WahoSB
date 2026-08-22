# green pillar
 function system:dungeon/f7/p2/pillar/green/tick

 # blue pillar
 function system:dungeon/f7/p2/pillar/blue/tick

  # yellow pillar
 function system:dungeon/f7/p2/pillar/yellow/tick

# pillar crush tick
 execute if score $Blue.StormCanCrush F7.Gimmick.Status matches 1.. run scoreboard players remove $Blue.StormCanCrush F7.Gimmick.Status 1
 execute if score $Green.StormCanCrush F7.Gimmick.Status matches 1.. run scoreboard players remove $Green.StormCanCrush F7.Gimmick.Status 1
 execute if score $Yellow.StormCanCrush F7.Gimmick.Status matches 1.. run scoreboard players remove $Yellow.StormCanCrush F7.Gimmick.Status 1


 # storm
 execute as @e[type=wither,tag=Mob.Dungeon.Boss.Storm] at @s run function system:dungeon/f7/p2/storm/tick

# lightning
 function system:dungeon/f7/p2/lightning/tick



# summons

# wither guards
 execute if score $F7Storm Tick matches 25 run function system:dungeon/f7/p2/summon/main/wither_guard

# g y
 execute if score $F7Storm Tick matches 1 positioned 46 169 53 run function system:dungeon/f7/p2/summon/main/spawns/15
 execute if score $F7Storm Tick matches 50 positioned 27 165 53 run function system:dungeon/f7/p2/summon/main/spawns/5

 # r b
 execute if score $F7Storm Tick matches 1 positioned 100 169 53 run function system:dungeon/f7/p2/summon/main/spawns/15
  execute if score $F7Storm Tick matches 50 positioned 119 165 53 run function system:dungeon/f7/p2/summon/main/spawns/5

# mid front 
 execute if score $F7Storm Tick matches 50 positioned 73 165 61 run function system:dungeon/f7/p2/summon/main/spawns/15
 # mid mid
 execute if score $F7Storm Tick matches 50 positioned 73 165 53 run function system:dungeon/f7/p2/summon/main/spawns/15
 # mid back
 execute if score $F7Storm Tick matches 50 positioned 73 165 45 run function system:dungeon/f7/p2/summon/main/spawns/15

# pads
#blue
 execute if score $F7Storm Tick matches 55 positioned 114 170 94 run function system:dungeon/f7/p2/summon/main/spawns/15
 # yellow
execute if score $F7Storm Tick matches 55 positioned 32 170 94 run function system:dungeon/f7/p2/summon/main/spawns/15
# green 
execute if score $F7Storm Tick matches 55 positioned 32 170 12 run function system:dungeon/f7/p2/summon/main/spawns/15
# red 
execute if score $F7Storm Tick matches 55 positioned 114 170 12 run function system:dungeon/f7/p2/summon/main/spawns/15

# g r
execute if score $F7Storm Tick matches 55 positioned 62 163 10 run function system:dungeon/f7/p2/summon/main/spawns/10
execute if score $F7Storm Tick matches 55 positioned 73 163 10 run function system:dungeon/f7/p2/summon/main/spawns/10
execute if score $F7Storm Tick matches 55 positioned 84 163 10 run function system:dungeon/f7/p2/summon/main/spawns/10

# y b
execute if score $F7Storm Tick matches 55 positioned 84 163 96 run function system:dungeon/f7/p2/summon/main/spawns/10
execute if score $F7Storm Tick matches 55 positioned 73 163 96 run function system:dungeon/f7/p2/summon/main/spawns/10
execute if score $F7Storm Tick matches 55 positioned 62 163 96 run function system:dungeon/f7/p2/summon/main/spawns/10



  # tick count
 scoreboard players add $F7Storm Tick 1


