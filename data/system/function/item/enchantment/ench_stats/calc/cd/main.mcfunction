# reset
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{EnchCc:""}}

# set status

scoreboard players set #ench Temporary 0
 execute if items entity @s weapon.mainhand *[custom_data~{enchant:{toxophilite:10}}] run scoreboard players add #ench Temporary 10
 execute if items entity @s weapon.mainhand *[custom_data~{enchant:{overload:5}}] run scoreboard players add #ench Temporary 5

execute store result storage temp: ench.value int 1 run scoreboard players get #ench Temporary

 function system:item/enchantment/ench_stats/calc/cc/macro with storage temp: ench
 scoreboard players reset #ench Temporary
 data remove storage temp: ench
