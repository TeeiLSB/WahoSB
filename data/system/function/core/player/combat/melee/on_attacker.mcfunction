scoreboard players operation #ferochance Temporary = @s Status.Ferocity
execute store result score #ferorng Temporary run random value 0..100

execute store result storage temp: ferocity.damage int 1 run scoreboard players get @s Status.MeleeDamage
execute store result storage temp: ferocity.remain int 1 run scoreboard players get @s Status.Ferocity


execute if score #ferochance Temporary > #ferorng Temporary run playsound minecraft:item.flintandsteel.use master @s ^ ^ ^ 0.3 0.5
execute if score #ferochance Temporary > #ferorng Temporary run execute as @n[tag=MeleeReciever] unless score @s Ferocity_Remain matches 1.. if data entity @s {HurtTime:10s} \
run function system:core/player/stats/ferocity/apply with storage temp: ferocity

data remove storage temp: ferocity
scoreboard players reset #ferochance Temporary
scoreboard players reset #ferorng Temporary

tag @s remove MeleeAttacker