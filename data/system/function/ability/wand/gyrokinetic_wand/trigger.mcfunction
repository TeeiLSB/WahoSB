
execute if score @s CD.default matches 0 anchored eyes positioned ^ ^ ^ run function system:ability/wand/gyrokinetic_wand/raycast/start_ray
# mana
execute if score @s CD.default matches 0 unless items entity @s weapon.mainhand *[custom_data~{enchant:{ult:{ultimate_wise:5}}}] run \
 scoreboard players remove @s Status.CurrentMana 1200
execute if score @s CD.default matches 0 if items entity @s weapon.mainhand *[custom_data~{enchant:{ult:{ultimate_wise:5}}}] run \
 scoreboard players remove @s Status.CurrentMana 600


# 暴発防止
execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 5
