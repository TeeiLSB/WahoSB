scoreboard players set $F7.Boss.DeathSound F7.Gimmick.Status 60
scoreboard players set $StormPhase F7.Gimmick.Status 2

tellraw @a [{"text":"§aStorm Phase ended in "},{"score":{"name":"$F7Storm","objective":"Tick"},"color":"aqua"}," §aTicks"]

# real death
tag @s remove CantAutoKill

bossbar remove wahosb:f7
