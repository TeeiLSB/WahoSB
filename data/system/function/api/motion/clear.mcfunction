item modify entity @s[type=player] saddle {"function": "minecraft:set_components","components": {enchantments:{"system:player/entity_hurt_player":1}}}
item modify entity @s[type=!player,tag=!Bot] saddle {"function": "minecraft:set_components","components": {enchantments:{"system:bow/detect/arrow_hit":1}}}


function system:api/motion/revart with storage player: rotation