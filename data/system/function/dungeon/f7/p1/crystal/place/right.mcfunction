scoreboard players add $RightCrystal F7.Gimmick.Status 1
scoreboard players add $CrystalCount F7.Gimmick.Status 1
tag @s remove F7.HasCrystal

summon item_display 52 224 41 {item:{id:"end_crystal"},transformation:{"scale":[2.0,2.0,2.0],translation:[0,1,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},teleport_duration:1,Tags:[UnclaimbleCrstal,"F7.Reset"]}