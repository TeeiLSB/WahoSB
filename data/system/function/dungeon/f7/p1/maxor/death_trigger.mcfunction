scoreboard players set $F7.Boss.DeathSound F7.Gimmick.Status 60
scoreboard players set $MaxorPhase F7.Gimmick.Status 2

tellraw @a [{"text":"§aMaxor Phase ended in "},{"score":{"name":"$F7tick","objective":"Tick"},"color":"aqua"}," §aTicks"]

# real death
tag @s remove CantAutoKill

bossbar remove wahosb:f7


function system:dungeon/f7/p2/start