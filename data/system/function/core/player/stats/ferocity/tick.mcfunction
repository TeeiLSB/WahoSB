scoreboard players remove @s Ferocity_CD 1
execute if score @s Ferocity_CD matches 0 run damage @s 0 magic

execute if score @s Ferocity_CD matches 0 as @p at @s run playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 0.15 1.5
execute if score @s Ferocity_CD matches 0 as @p at @s run playsound entity.iron_golem.attack master @p ~ ~ ~ 1.5 1.4

execute if score @s Ferocity_CD matches 0 run scoreboard players reset @s Ferocity_CD
