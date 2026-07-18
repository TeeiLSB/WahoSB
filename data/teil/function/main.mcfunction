# sword tick
 execute as @a at @s run function system:ability/sword/tick

# fero
 execute as @e[scores={Ferocity_CD=0..}] at @s run function system:core/player/stats/ferocity/tick

# clear arrow
# arrow tick
 function system:ability/bow/terminator/arrow/arrow_tick

# dmg indicdator item
 execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}}] at @s run tp @s ^ ^ ^
 execute as @e[type=item,nbt={PortalCooldown:0,Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}}] at @s run kill @s


# dungeon tick
 function system:dungeon/tick

#  every player tick
 execute as @a at @s run function system:core/player/tick