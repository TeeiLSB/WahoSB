# reset
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{ReforgeStatus:""}}

# set name
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{Reforge:"Spiritual"}}

# set status
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:1}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:4,Cc:7,Cd:10}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:2}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:8,Cc:8,Cd:15}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:3}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:14,Cc:9,Cd:23}}}

  execute if items entity @s weapon.mainhand *[custom_data~{Rarity:4}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:20,Cc:10,Cd:37}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:5}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:28,Cc:12,Cd:55}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:6}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:38,Cc:14,Cd:75}}}