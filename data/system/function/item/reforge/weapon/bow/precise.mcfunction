# reset
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{ReforgeStatus:""}}

# set name
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{Reforge:"Precise"}}

# set status
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:1}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:3,Cc:8,Cd:6}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:2}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:7,Cc:9,Cd:10}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:3}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:12,Cc:10,Cd:18}}}

  execute if items entity @s weapon.mainhand *[custom_data~{Rarity:4}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:18,Cc:11,Cd:32}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:5}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:25,Cc:13,Cd:50}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:6}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:34,Cc:15,Cd:70}}}