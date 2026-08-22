
# fero
 execute as @e[scores={Ferocity_CD=0..,Ferocity_Remain=1..},tag=!Invulnerable] at @s run function system:core/player/stats/ferocity/tick

# clear arrow
# arrow tick
 function system:ability/bow/terminator/arrow/arrow_tick

# dmg indicdator item
 execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}}] at @s run tp @s ^ ^ ^
 execute as @e[type=item,nbt={PortalCooldown:0,Item:{components:{"minecraft:custom_data":{dmg_ind:1b}}}}] at @s run kill @s

 execute as @e[type=arrow,tag=ArrowItem,nbt={life:60s}] at @s on passengers run kill @s
 execute as @e[type=arrow,tag=ArrowItem,nbt={life:60s}] at @s run kill @s
# dungeon tick
 function system:dungeon/tick

#  every player tick
 execute as @a at @s run function system:core/player/tick

# pet tick
 function system:core/player/pet/tick

# item ability tick
 function system:ability/ability_tick/list

# bot tick
 function system:bot/tick

# gui sb menu
 function system:core/gui/sb_menu/tick

# ダメージ処理に干渉するからautokillは最後！！
 # autokill
 function system:api/autokill/tick

# tick
 scoreboard players add $tick Tick 1
 execute if score $tick Tick matches 21 run scoreboard players set $tick Tick 1