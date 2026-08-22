# base
scoreboard players set @s Status.Health 100


scoreboard players operation @s Status.Health += @s MainHand.Hp
scoreboard players operation @s Status.Health += @s head.Hp
scoreboard players operation @s Status.Health += @s Chest.Hp
scoreboard players operation @s Status.Health += @s legs.Hp
scoreboard players operation @s Status.Health += @s feet.Hp
scoreboard players operation @s Status.Health *= #104 Constant
scoreboard players operation @s Status.Health /= #100 Constant
