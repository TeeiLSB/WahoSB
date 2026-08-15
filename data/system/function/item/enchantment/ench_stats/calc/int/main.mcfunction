# reset
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{EnchInt:""}}

# set status

scoreboard players set #ench Temporary 0
 execute if items entity @s weapon.mainhand *[custom_data~{enchant:{smarty_pants:5}}] run scoreboard players add #ench Temporary 25
 execute if items entity @s weapon.mainhand *[custom_data~{enchant:{big_brain:5}}] run scoreboard players add #ench Temporary 25
 execute if items entity @s weapon.mainhand *[custom_data~{enchant:{ult:{wisdom:5}}}] run scoreboard players add #ench Temporary 100


execute store result storage temp: ench.value int 1 run scoreboard players get #ench Temporary

 function system:item/enchantment/ench_stats/calc/int/macro with storage temp: ench
 scoreboard players reset #ench Temporary
 data remove storage temp: ench
