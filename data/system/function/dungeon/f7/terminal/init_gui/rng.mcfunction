execute store result score #TerminalRNG Temporary run random value 1..7
scoreboard players set #TerminalRNG Temporary 3

$execute if score #TerminalRNG Temporary matches 1 positioned $(x) $(y) $(z) run function system:dungeon/f7/terminal/init_gui/number {"sx":"$(sx)",sy:"$(sy)",sz:"$(sz)"}
$execute if score #TerminalRNG Temporary matches 2 positioned $(x) $(y) $(z) run function system:dungeon/f7/terminal/init_gui/melody {"sx":"$(sx)",sy:"$(sy)",sz:"$(sz)"}
$execute if score #TerminalRNG Temporary matches 3 positioned $(x) $(y) $(z) run function system:dungeon/f7/terminal/init_gui/5x3 {"sx":"$(sx)",sy:"$(sy)",sz:"$(sz)"}
$execute if score #TerminalRNG Temporary matches 4 positioned $(x) $(y) $(z) run function system:dungeon/f7/terminal/init_gui/4x7 {"sx":"$(sx)",sy:"$(sy)",sz:"$(sz)"}
$execute if score #TerminalRNG Temporary matches 5 positioned $(x) $(y) $(z) run function system:dungeon/f7/terminal/init_gui/3x7 {"sx":"$(sx)",sy:"$(sy)",sz:"$(sz)"}
$execute if score #TerminalRNG Temporary matches 6 positioned $(x) $(y) $(z) run function system:dungeon/f7/terminal/init_gui/3x3 {"sx":"$(sx)",sy:"$(sy)",sz:"$(sz)"}


scoreboard players reset #TerminalRNG Temporary