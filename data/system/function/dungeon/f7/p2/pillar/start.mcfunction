scoreboard players set $GreenPillarLevel F7.Gimmick.Status 17
scoreboard players set $GreenPillarTurn F7.Gimmick.Status 1
scoreboard players set #GreenPillarUsed F7.Gimmick.Status 0
fill 43 188 38 49 169 44 air
scoreboard players operation #Green.PillarLeft F7.Gimmick.Status = $GreenPillarLevel F7.Gimmick.Status
execute positioned 43 188 38 run function system:dungeon/f7/p2/pillar/green/fill

scoreboard players set $BluePillarLevel F7.Gimmick.Status 17
scoreboard players set $BluePillarTurn F7.Gimmick.Status 1
scoreboard players set #BluePillarUsed F7.Gimmick.Status 0
fill 97 188 62 103 169 68 air
scoreboard players operation #Blue.PillarLeft F7.Gimmick.Status = $BluePillarLevel F7.Gimmick.Status
execute positioned 97 188 62 run function system:dungeon/f7/p2/pillar/blue/fill

scoreboard players set $YellowPillarLevel F7.Gimmick.Status 17
scoreboard players set $YellowPillarTurn F7.Gimmick.Status 1
scoreboard players set #YellowPillarUsed F7.Gimmick.Status 0
fill 43 188 62 49 169 68 air
scoreboard players operation #Yellow.PillarLeft F7.Gimmick.Status = $YellowPillarLevel F7.Gimmick.Status
execute positioned 43 188 62 run function system:dungeon/f7/p2/pillar/yellow/fill