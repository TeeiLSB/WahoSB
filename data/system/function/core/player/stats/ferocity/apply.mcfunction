scoreboard players set @s Ferocity_CD 5
$scoreboard players set @s Ferocity_Damage $(damage)
$execute store result score #remain Temporary run random value 1..$(remain)
execute if score #remain Temporary matches ..100 run scoreboard players set @s Ferocity_Remain 1
execute if score #remain Temporary matches 101..200 run scoreboard players set @s Ferocity_Remain 2
execute if score #remain Temporary matches 201..300 run scoreboard players set @s Ferocity_Remain 3
execute if score #remain Temporary matches 301..400 run scoreboard players set @s Ferocity_Remain 4
execute if score #remain Temporary matches 401..500 run scoreboard players set @s Ferocity_Remain 5
execute if score #remain Temporary matches 501.. run scoreboard players set @s Ferocity_Remain 6