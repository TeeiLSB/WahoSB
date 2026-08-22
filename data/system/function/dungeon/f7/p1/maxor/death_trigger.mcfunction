

scoreboard players set $F7.Boss.DeathSound F7.Gimmick.Status 120
scoreboard players set $MaxorPhase F7.Gimmick.Status 2

tellraw @a [{"text":"§aMaxor Phase ended in "},{"score":{"name":"$F7tick","objective":"Tick"},"color":"aqua"}," §aTicks"]

schedule function system:dungeon/f7/p1/maxor/floor_remove 120t

# real death
tag @s remove CantAutoKill

bossbar remove wahosb:f7

