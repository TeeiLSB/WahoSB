# reset
scoreboard players set @s Dungeon.Class.Mage.BeamRange 0
#run
execute if score @s Player.AttackCooldown matches 0 at @s anchored eyes positioned ^ ^ ^ run function system:dungeon/class/mage/mage_beam/repeat

# attack cooldown
execute if score @s Player.AttackCooldown matches 0 if score @s Status.AttackSpeed matches 82.. run scoreboard players set @s Player.AttackCooldown 5
execute if score @s Player.AttackCooldown matches 0 if score @s Status.AttackSpeed matches 54..81 run scoreboard players set @s Player.AttackCooldown 6
execute if score @s Player.AttackCooldown matches 0 if score @s Status.AttackSpeed matches 34..53 run scoreboard players set @s Player.AttackCooldown 7
execute if score @s Player.AttackCooldown matches 0 if score @s Status.AttackSpeed matches 18..33 run scoreboard players set @s Player.AttackCooldown 8
execute if score @s Player.AttackCooldown matches 0 if score @s Status.AttackSpeed matches 6..17 run scoreboard players set @s Player.AttackCooldown 9
execute if score @s Player.AttackCooldown matches 0 if score @s Status.AttackSpeed matches 0..5 run scoreboard players set @s Player.AttackCooldown 10