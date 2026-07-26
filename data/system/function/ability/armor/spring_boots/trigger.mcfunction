scoreboard players add @s Item.Ability.SpringBoots 1


scoreboard players operation @s Item.Ability.SpringBoots.Sound = @s Item.Ability.SpringBoots
execute if score @s Item.Ability.SpringBoots matches ..2 run scoreboard players operation @s Item.Ability.SpringBoots.Sound %= #2 Constant
execute if score @s Item.Ability.SpringBoots matches 3..6 run scoreboard players operation @s Item.Ability.SpringBoots.Sound %= #3 Constant
execute if score @s Item.Ability.SpringBoots matches 7..14 run scoreboard players operation @s Item.Ability.SpringBoots.Sound %= #4 Constant
execute if score @s Item.Ability.SpringBoots matches 15..30 run scoreboard players operation @s Item.Ability.SpringBoots.Sound %= #5 Constant
execute if score @s Item.Ability.SpringBoots matches 31.. run scoreboard players operation @s Item.Ability.SpringBoots.Sound %= 6# Constant
execute if score @s Item.Ability.SpringBoots.Sound matches 0 run playsound minecraft:block.note_block.hat master @s ^ ^ ^ 1 0.75


execute if score @s Item.Ability.SpringBoots.Sound matches 0 run execute if score @s Item.Ability.SpringBoots matches 2 run playsound minecraft:block.note_block.pling master @s ^ ^ ^ 2 0.7
execute if score @s Item.Ability.SpringBoots.Sound matches 0 run execute if score @s Item.Ability.SpringBoots matches 3.. run playsound minecraft:block.note_block.pling master @s ^ ^ ^ 2 0.75


advancement revoke @s only system:ability/tick/spring_boots