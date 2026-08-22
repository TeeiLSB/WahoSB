
execute if score @s CD.default matches 0 run playsound minecraft:entity.ghast.ambient master @s ~ ~ ~ 1 2


execute if score @s CD.default matches 0 anchored eyes positioned ^ ^ ^ run execute summon item_display run function system:ability/ability_tick/bonzo_staff/init/display_init

# mana
execute if score @s CD.default matches 0 unless items entity @s weapon.mainhand *[custom_data~{enchant:{ult:{ultimate_wise:5}}}] run scoreboard players remove @s Status.CurrentMana 90
execute if score @s CD.default matches 0 if items entity @s weapon.mainhand *[custom_data~{enchant:{ult:{ultimate_wise:5}}}] run scoreboard players remove @s Status.CurrentMana 45


# 暴発防止
execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 5


# reset
advancement revoke @s only system:ability/right_click/bonzo_staff