scoreboard players operation @s Status.Strength = @s MainHand.Str
scoreboard players operation @s Status.Strength += @s head.Str
scoreboard players operation @s Status.Strength += @s Chest.Str
scoreboard players operation @s Status.Strength += @s legs.Str
scoreboard players operation @s Status.Strength += @s feet.Str

scoreboard players operation @s Status.Strength += @s Status.BonusStrength


scoreboard players operation @s Status.Strength *= #104 Constant
scoreboard players operation @s Status.Strength /= #100 Constant
