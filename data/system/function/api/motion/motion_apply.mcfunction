item replace entity @s saddle with glass[item_model="custom/misc/nothing",custom_data={motion_item:true},equippable={slot:saddle,equip_sound:"intentionally_empty"}]




$item modify entity @s saddle {function:"set_enchantments",enchantments:\
{"system:motion/x_plus":$(x),"system:motion/x_minus":$(xm),\
"system:motion/y_plus":$(y),"system:motion/y_minus":$(ym),\
"system:motion/z_plus":$(z),"system:motion/z_minus":$(zm)}}
