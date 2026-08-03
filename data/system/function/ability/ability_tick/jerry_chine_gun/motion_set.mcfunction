item replace entity @s saddle with glass[item_model="custom/misc/nothing",custom_data={motion_item:true},equippable={slot:saddle,equip_sound:"intentionally_empty"}]

item modify entity @s[nbt={OnGround:0b}] saddle {function:"set_enchantments",enchantments:\
{"system:misc/jerry_chine_gun/z":20,"system:misc/jerry_chine_gun/y":26}}
item modify entity @s[nbt={OnGround:1b}] saddle {function:"set_enchantments",enchantments:\
{"system:misc/jerry_chine_gun/z":25,"system:misc/jerry_chine_gun/y":58}}
