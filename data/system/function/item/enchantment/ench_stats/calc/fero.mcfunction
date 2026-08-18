# reset
 item modify block 0 0 0 container.0 {function: "set_custom_data",tag:{EnchFero:""}}

# set status

scoreboard players set #ench Temporary 0
 execute if items block 0 0 0 container.0 *[custom_data~{enchant:{vicious:5}}] run scoreboard players add #ench Temporary 5

execute store result storage temp: ench.value int 1 run scoreboard players get #ench Temporary
data modify storage temp: ench.s set value Fero

 function system:item/enchantment/ench_stats/calc/macro with storage temp: ench
 scoreboard players reset #ench Temporary
 data remove storage temp: ench