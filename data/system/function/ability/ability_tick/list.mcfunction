# default
 execute as @a if score @s CD.default matches 1.. run scoreboard players remove @s CD.default 1

# hyperion
 execute as @a[scores={CD.hyperion=1}] at @s run function system:ability/sword/dungeon/hyperion_shield
 execute as @a[scores={CD.hyperion=1..}] run scoreboard players remove @s CD.hyperion 1

# rag axe Temp
function system:ability/ability_tick/weapon/ragnarock/tick







# bonzo
execute as @e[tag=Item.BonzoStaff.Balloon,type=item_display] at @s run function system:ability/ability_tick/bonzo_staff/balloon
# jerry chine
execute as @e[tag=Item.Jerry_Chine_Gun,type=item_display] at @s run function system:ability/ability_tick/jerry_chine_gun/head

# aots
execute as @e[tag=Item.Aots.Axe,type=item_display] at @s run function system:ability/ability_tick/axe_of_the_shredded/tick