# reset
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{ReforgeStatus:""}}

# set name
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{Reforge:"Fabled"}}

# set status
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:1}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:30,Cd:15}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:2}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:35,Cd:20}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:3}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:40,Cd:25}}}

  execute if items entity @s weapon.mainhand *[custom_data~{Rarity:4}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:50,Cd:32}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:5}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:60,Cd:40}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:6}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:75,Cd:50}}}