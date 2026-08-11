# reset
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{GemstoneS_2:""}}
   item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{Gemstone:{2:""}}}
# set gem
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{Gemstone:{2:{onyx:5}}}}

# set status
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:1}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{GemstoneS_2:\
 {Cd:5}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:2}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{GemstoneS_2:\
 {Cd:6}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:3}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{GemstoneS_2:\
 {Cd:7}}}

  execute if items entity @s weapon.mainhand *[custom_data~{Rarity:4}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{GemstoneS_2:\
 {Cd:8}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:5}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{GemstoneS_2:\
 {Cd:10}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:6}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{GemstoneS_2:\
 {Cd:12}}}