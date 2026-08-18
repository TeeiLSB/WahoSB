item modify entity @s saddle {"function": "minecraft:set_components","components": {"minecraft:enchantments": {}}}
function system:ability/ability_tick/jerry_chine_gun/revart with storage player: rotation

scoreboard players add @s JerryChineGun 1

execute if score @s JerryChineGun matches 2 run kill @e[type=item_display,tag=Item.Jerry_Chine_Gun]

#tellraw @s [{"entity":"@s",nbt:"Motion[0]"},{"entity":"@s",nbt:"Motion[2]"}]