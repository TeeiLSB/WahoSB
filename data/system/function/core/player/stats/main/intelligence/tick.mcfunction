scoreboard players operation #regen Temporary = @s Status.Mana
scoreboard players operation #regen Temporary /= #50 Constant
scoreboard players operation #regen Temporary += #1 Constant


execute if score @s Status.CurrentMana < @s Status.Mana if score $tick Tick matches 1 run scoreboard players operation @s Status.CurrentMana += #regen Temporary
execute if score @s Status.CurrentMana > @s Status.Mana if score $tick Tick matches 1 run scoreboard players operation @s Status.CurrentMana = @s Status.Mana
scoreboard players reset #regen Temporary