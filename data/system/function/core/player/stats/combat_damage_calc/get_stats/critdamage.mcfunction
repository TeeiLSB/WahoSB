# base
scoreboard players set @s Status.CritDamage 50



scoreboard players operation @s Status.CritDamage = @s MainHand.Cd
scoreboard players operation @s Status.CritDamage += @s head.Cd
scoreboard players operation @s Status.CritDamage += @s Chest.Cd
scoreboard players operation @s Status.CritDamage += @s legs.Cd
scoreboard players operation @s Status.CritDamage += @s feet.Cd

scoreboard players operation @s Status.CritDamage += #BonusCrit Status.CritDamage

scoreboard players operation @s Status.CritDamage *= #104 Constant
scoreboard players operation @s Status.CritDamage /= #100 Constant