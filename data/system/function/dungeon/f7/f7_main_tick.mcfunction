# CrystalCount check
 execute unless score #CrystalCount.Old F7.Gimmick.Status = $CrystalCount F7.Gimmick.Status if score $CrystalCount F7.Gimmick.Status matches 1.. run title @a title ""

 execute unless score #CrystalCount.Old F7.Gimmick.Status = $CrystalCount F7.Gimmick.Status if score $CrystalCount F7.Gimmick.Status matches 1 run title @a subtitle "§c1§a/2 Energy Crystal now active!"
 execute unless score #CrystalCount.Old F7.Gimmick.Status = $CrystalCount F7.Gimmick.Status if score $CrystalCount F7.Gimmick.Status matches 2 run title @a subtitle "§a2/2 Energy Crystal now active!"

 execute unless score #CrystalCount.Old F7.Gimmick.Status = $CrystalCount F7.Gimmick.Status run scoreboard players operation #CrystalCount.Old F7.Gimmick.Status = $CrystalCount F7.Gimmick.Status


execute if score $CrystalCount F7.Gimmick.Status matches 2 run function system:dungeon/f7/p1/beacon_beam/when_crystal_2

execute if score $tick Tick matches 10 run function system:dungeon/f7/p1/beacon_beam/floor_moving


# maxor tick
 execute as @e[type=wither,tag=Mob.Dungeon.Boss.Maxor] at @s run function system:dungeon/f7/p1/maxor/tick