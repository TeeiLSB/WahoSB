
execute if score @s CD.default matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet run function system:raycast/nomal/start {"reach":"120"}
effect give @s slow_falling 1 0 true
effect clear @s slow_falling

# mana
execute if score @s CD.default matches 0 unless items entity @s weapon.mainhand *[custom_data~{enchant:{ult:{ultimate_wise:5}}}] run scoreboard players remove @s Status.CurrentMana 50
execute if score @s CD.default matches 0 if items entity @s weapon.mainhand *[custom_data~{enchant:{ult:{ultimate_wise:5}}}] run scoreboard players remove @s Status.CurrentMana 24

execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 4

# reset
advancement revoke @s only system:ability/right_click/aspect_of_the_void