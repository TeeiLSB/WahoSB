# reset
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{EnchCd:""}}

# set status

scoreboard players set #ench Temporary 0
 execute if items entity @s weapon.mainhand *[custom_data~{enchant:{critical:7}}] run scoreboard players add #ench Temporary 100
 execute if items entity @s weapon.mainhand *[custom_data~{enchant:{overload:5}}] run scoreboard players add #ench Temporary 50

execute store result storage temp: ench.value int 1 run scoreboard players get #ench Temporary

 function system:item/enchantment/ench_stats/calc/cd/macro with storage temp: ench
 scoreboard players reset #ench Temporary
 data remove storage temp: ench
