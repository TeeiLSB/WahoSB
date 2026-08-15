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


  # tick count
 scoreboard players add $F7Storm Tick 1


# debug
#title @a actionbar {"score":{"name":"$Green.StormCanCrush","objective":F7.Gimmick.Status}}