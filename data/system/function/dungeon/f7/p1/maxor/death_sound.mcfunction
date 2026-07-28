execute if score $F7.Boss.DeathSound F7.Gimmick.Status matches 1.. run scoreboard players remove $F7.Boss.DeathSound F7.Gimmick.Status 1


scoreboard players operation #SoundSpliter Temporary = $F7.Boss.DeathSound F7.Gimmick.Status
scoreboard players operation #SoundSpliter Temporary %= #7 Constant
execute if score #SoundSpliter Temporary matches 0 as @a at @s run playsound entity.wither.hurt master @s ^ ^ ^ 0.5


execute if score $F7.Boss.DeathSound F7.Gimmick.Status matches 0 run scoreboard players reset $F7.Boss.DeathSound