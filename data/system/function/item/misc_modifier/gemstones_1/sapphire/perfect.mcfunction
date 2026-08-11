# reset
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{GemstoneS_1:""}}
  item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{Gemstone:{1:""}}}
# set gem
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{Gemstone:{1:{sapphire:5}}}}

# set status
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:1}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{GemstoneS_1:\
 {Int:12}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:2}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{GemstoneS_1:\
 {Int:14}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:3}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{GemstoneS_1:\
 {Int:17}}}

  execute if items entity @s weapon.mainhand *[custom_data~{Rarity:4}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{GemstoneS_1:\
 {Int:20}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:5}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{GemstoneS_1:\
 {Int:24}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:6}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{GemstoneS_1:\
 {Int:30}}}