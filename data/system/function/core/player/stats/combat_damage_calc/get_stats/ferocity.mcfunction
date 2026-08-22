# base
scoreboard players set @s Status.Ferocity 0


scoreboard players operation @s Status.Ferocity += @s MainHand.Fero
scoreboard players operation @s Status.Ferocity += @s head.Fero
scoreboard players operation @s Status.Ferocity += @s Chest.Fero
scoreboard players operation @s Status.Ferocity += @s legs.Fero
scoreboard players operation @s Status.Ferocity += @s feet.Fero
scoreboard players operation @s Status.Ferocity *= #104 Constant
scoreboard players operation @s Status.Ferocity /= #100 Constant
