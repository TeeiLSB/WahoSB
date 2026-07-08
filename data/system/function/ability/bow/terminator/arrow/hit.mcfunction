playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0.8
advancement revoke @s only system:ability/right_click/hurt_entity_arrow

scoreboard players operation #ferochance Temporary = @s Status.Ferocity
execute store result score #ferorng Temporary run random value 0..100
execute if score #ferochance Temporary > #ferorng Temporary run playsound minecraft:item.flintandsteel.use master @s ^ ^ ^ 1 0.5
execute if score #ferochance Temporary > #ferorng Temporary run execute as @e at @s on attacker \
        as @e[distance=0,limit=1] if data entity @s {HurtTime:10s} \
run function system:core/player/stats/ferocity/apply

scoreboard players reset #ferochance Temporary
scoreboard players reset #ferorng Temporary


execute as @e at @s on attacker \
        as @e[distance=0,limit=1] if data entity @s {HurtTime:10s} \
run function system:ability/bow/terminator/arrow/wow/arrow_hit_as_reciever