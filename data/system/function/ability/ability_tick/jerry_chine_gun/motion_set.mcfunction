item replace entity @s saddle with glass[item_model="custom/misc/nothing",custom_data={motion_item:true},equippable={slot:saddle,equip_sound:"intentionally_empty"}]


scoreboard players set #600 Constant 600
execute store result score #Ymotion Temporary run data get entity @s Motion[1] 1000
scoreboard players operation #Ymotion Temporary *= #-1 Constant
scoreboard players operation #Ymotion Temporary += #600 Constant

execute store result storage motion: y.value int 0.1 run scoreboard players get #Ymotion Temporary
title @s actionbar {"score":{"name":"#Ymotion","objective":"Temporary"}}


function system:ability/ability_tick/jerry_chine_gun/macro with storage motion: y
data remove storage motion: y
scoreboard players reset #Ymotion Temporary