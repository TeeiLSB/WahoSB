
# CrystalCount check
 execute unless score #CrystalCount.Old F7.Gimmick.Status = $CrystalCount F7.Gimmick.Status if score $CrystalCount F7.Gimmick.Status matches 1.. run title @a title ""

 execute unless score #CrystalCount.Old F7.Gimmick.Status = $CrystalCount F7.Gimmick.Status if score $CrystalCount F7.Gimmick.Status matches 1 run title @a subtitle "§c1§a/2 Energy Crystal now active!"
 execute unless score #CrystalCount.Old F7.Gimmick.Status = $CrystalCount F7.Gimmick.Status if score $CrystalCount F7.Gimmick.Status matches 2 run title @a subtitle "§a2/2 Energy Crystal now active!"
 execute unless score #CrystalCount.Old F7.Gimmick.Status = $CrystalCount F7.Gimmick.Status if score $CrystalCount F7.Gimmick.Status matches 2 run schedule function system:dungeon/f7/p1/crystal/place/laser_title 20t
 execute unless score #CrystalCount.Old F7.Gimmick.Status = $CrystalCount F7.Gimmick.Status run scoreboard players operation #CrystalCount.Old F7.Gimmick.Status = $CrystalCount F7.Gimmick.Status

execute if score $CrystalCount F7.Gimmick.Status matches 1 run function system:dungeon/f7/p1/beacon_beam/when_crystal_1
execute if score $CrystalCount F7.Gimmick.Status matches 2 run function system:dungeon/f7/p1/beacon_beam/when_crystal_2

execute if score $tick Tick matches 10 run function system:dungeon/f7/p1/beacon_beam/floor_moving

# p2のために床をあける
execute if score $F7.Boss.DeathSound F7.Gimmick.Status matches 1 run fill 69 220 49 77 220 32 air


# maxor tick
 execute as @e[type=wither,tag=Mob.Dungeon.Boss.Maxor] at @s run function system:dungeon/f7/p1/maxor/tick


 #  maxor death sound
 execute if score $F7.Boss.DeathSound F7.Gimmick.Status matches 1.. run function system:dungeon/f7/p1/maxor/death_sound


 # tick count
 scoreboard players add $F7tick Tick 1