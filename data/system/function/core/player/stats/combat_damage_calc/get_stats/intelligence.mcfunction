scoreboard players operation @s Status.Intelligence = @s MainHand.Int
scoreboard players operation @s Status.Intelligence += @s head.Int
scoreboard players operation @s Status.Intelligence += @s Chest.Int
scoreboard players operation @s Status.Intelligence += @s legs.Int
scoreboard players operation @s Status.Intelligence += @s feet.Int

scoreboard players operation @s Status.Intelligence += #BonusInt Status.Intelligence

scoreboard players operation @s Status.Intelligence *= #104 Constant
scoreboard players operation @s Status.Intelligence /= #100 Constant