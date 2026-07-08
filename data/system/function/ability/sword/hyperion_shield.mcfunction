execute store result score #ab_amount Temporary run data get entity @s AbsorptionAmount 100

#tellraw @a {score:{"name":"#ab_amount","objective":"Temporary"}}


execute if score #ab_amount Temporary matches 1..800 run effect give @s instant_health 1 0 true
execute if score #ab_amount Temporary matches 801..1200 run effect give @s instant_health 1 1 true
execute if score #ab_amount Temporary matches 1201..1600 run effect give @s instant_health 1 2 true

scoreboard players reset #ab_amount Temporary

particle heart ~ ~2.5 ~

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2