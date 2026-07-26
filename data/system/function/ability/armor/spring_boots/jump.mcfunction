execute if score @s Item.Ability.SpringBoots matches 1.. run execute store result storage temp: jump.level int 1 run scoreboard players get @s Item.Ability.SpringBoots
execute if score @s Item.Ability.SpringBoots matches 1.. run function system:ability/armor/spring_boots/run with storage temp: jump




advancement revoke @s only system:ability/tick/spring_boots_jump