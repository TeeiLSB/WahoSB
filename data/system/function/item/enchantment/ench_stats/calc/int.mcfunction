# reset
 item modify block 0 0 0 container.0 {function: "set_custom_data",tag:{EnchInt:""}}

# set status

scoreboard players set #ench Temporary 0
 execute if items block 0 0 0 container.0 *[custom_data~{enchant:{smarty_pants:5}}] run scoreboard players add #ench Temporary 25
 execute if items block 0 0 0 container.0 *[custom_data~{enchant:{big_brain:5}}] run scoreboard players add #ench Temporary 25
 execute if items block 0 0 0 container.0 *[custom_data~{enchant:{ult:{wisdom:5}}}] run scoreboard players add #ench Temporary 100


execute store result storage temp: ench.value int 1 run scoreboard players get #ench Temporary
data modify storage temp: ench.s set value Int

 function system:item/enchantment/ench_stats/calc/macro with storage temp: ench
 scoreboard players reset #ench Temporary
 data remove storage temp: ench