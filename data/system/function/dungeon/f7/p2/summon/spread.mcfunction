execute store result storage temp: pos.x int 1 run random value -6..6
execute store result storage temp: pos.z int 1 run random value -6..6
function system:dungeon/f7/p2/summon/macro with storage temp: pos

data remove storage temp: pos