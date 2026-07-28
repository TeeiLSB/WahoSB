# 上限以下なら1ずつ増やす
execute if score @s Item.Ability.SpringBoots matches ..127 run scoreboard players add @s Item.Ability.SpringBoots 1

scoreboard players operation @s Item.Ability.SpringBoots.Sound = @s Item.Ability.SpringBoots
execute if score @s Item.Ability.SpringBoots matches ..4 run scoreboard players operation @s Item.Ability.SpringBoots.Sound %= #2 Constant
execute if score @s Item.Ability.SpringBoots matches 5..8 run scoreboard players operation @s Item.Ability.SpringBoots.Sound %= #3 Constant
execute if score @s Item.Ability.SpringBoots matches 9..16 run scoreboard players operation @s Item.Ability.SpringBoots.Sound %= #4 Constant
execute if score @s Item.Ability.SpringBoots matches 17..32 run scoreboard players operation @s Item.Ability.SpringBoots.Sound %= #5 Constant
execute if score @s Item.Ability.SpringBoots matches 33..64 run scoreboard players operation @s Item.Ability.SpringBoots.Sound %= #6 Constant
execute if score @s Item.Ability.SpringBoots matches 65..128 run scoreboard players operation @s Item.Ability.SpringBoots.Sound %= #7 Constant

execute if score @s Item.Ability.SpringBoots.Sound matches 0 run function system:ability/armor/spring_boots/sound


advancement revoke @s only system:ability/tick/spring_boots