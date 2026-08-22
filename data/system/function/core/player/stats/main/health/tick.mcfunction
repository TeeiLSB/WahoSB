scoreboard players operation #regen Temporary = @s Status.Health
scoreboard players operation #regen Temporary /= #100 Constant
scoreboard players operation #regen Temporary += #2 Constant


execute if score @s Status.CurrentHealth < @s Status.Health if score $tick Tick matches 1 run scoreboard players operation @s Status.CurrentHealth += #regen Temporary
execute if score @s Status.CurrentHealth > @s Status.Health if score $tick Tick matches 1 run scoreboard players operation @s Status.CurrentHealth = @s Status.Health
scoreboard players reset #regen Temporary