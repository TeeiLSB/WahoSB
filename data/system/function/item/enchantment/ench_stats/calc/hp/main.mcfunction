# reset
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{EnchHp:""}}

# set status

scoreboard players set #ench Temporary 0
 execute if items entity @s weapon.mainhand *[custom_data~{enchant:{growth:7}}] run scoreboard players add #ench Temporary 105

execute store result storage temp: ench.value int 1 run scoreboard players get #ench Temporary

 function system:item/enchantment/ench_stats/calc/hp/macro with storage temp: ench
 scoreboard players reset #ench Temporary
 data remove storage temp: ench
