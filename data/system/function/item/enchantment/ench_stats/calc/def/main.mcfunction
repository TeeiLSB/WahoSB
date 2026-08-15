# reset
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{EnchDef:""}}

# set status

scoreboard players set #ench Temporary 0
 execute if items entity @s weapon.mainhand *[custom_data~{enchant:{protection:7}}] run scoreboard players add #ench Temporary 30

execute store result storage temp: ench.value int 1 run scoreboard players get #ench Temporary

 function system:item/enchantment/ench_stats/calc/def/macro with storage temp: ench
 scoreboard players reset #ench Temporary
 data remove storage temp: ench
