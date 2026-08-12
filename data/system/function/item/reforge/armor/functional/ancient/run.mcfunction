# reset
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{ReforgeStatus:""}}

# set name
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{Reforge:"Ancient"}}

# set status
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:1}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Hp:7,Def:7,Str:4,Cc:3,Int:6}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:2}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Hp:7,Def:7,Str:8,Cc:5,Int:9}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:3}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Hp:7,Def:7,Str:12,Cc:7,Int:12}}}

  execute if items entity @s weapon.mainhand *[custom_data~{Rarity:4}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Hp:7,Def:7,Str:18,Cc:9,Int:16}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:5}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Hp:7,Def:7,Str:25,Cc:12,Int:20}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:6}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Hp:7,Def:7,Str:35,Cc:15,Int:25}}}

  execute if items entity @s weapon.mainhand *[custom_data~{Rarity:7}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Hp:7,Def:7,Str:35,Cc:15,Int:25}}}

  execute if items entity @s weapon.mainhand *[custom_data~{Rarity:8}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Hp:7,Def:7,Str:35,Cc:15,Int:25}}}


scoreboard players operation #cata Temporary = @s CatacombsLevel
scoreboard players operation #cata Temporary < #50 Constant
execute store result storage temp: cata.lvl int 1 run scoreboard players get #cata Temporary
 function system:item/reforge/armor/functional/ancient/macro with storage temp: cata
 data remove storage temp: cata
 scoreboard players reset #cata Temporary