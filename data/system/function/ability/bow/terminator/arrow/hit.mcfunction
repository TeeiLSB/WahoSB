playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0.8
advancement revoke @s only system:ability/right_click/hurt_entity_arrow




execute as @e at @s on attacker \
        as @e[distance=0,limit=1] if data entity @s {HurtTime:10s} \
run function system:ability/bow/terminator/arrow/wow/arrow_hit_as_reciever