# reset
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{ReforgeStatus:""}}

# set name
 item modify entity @s weapon.mainhand {function: "set_custom_data",tag:{Reforge:"Withered"}}

# set status
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:1}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:60}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:2}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:75}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:3}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:90}}}

  execute if items entity @s weapon.mainhand *[custom_data~{Rarity:4}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:110}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:5}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:135}}}

 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:6}] run \
 item modify entity @s weapon.mainhand \
 {function: "set_custom_data",tag:{ReforgeStatus:\
 {Str:170}}}


scoreboard players operation #cata Temporary = @s CatacombsLevel
scoreboard players operation #cata Temporary < #50 Constant

execute store result score #str Temporary run data get entity @s SelectedItem.components.minecraft:custom_data.ReforgeStatus.Str
scoreboard players operation #cata Temporary += #str Temporary
execute store result storage temp: cata.lvl int 1 run scoreboard players get #cata Temporary
 function system:item/reforge/weapon/sword/functional/withered/macro with storage temp: cata
 data remove storage temp: cata
 scoreboard players reset #cata Temporary
 scoreboard players reset #str Temporary