scoreboard players set @s ray_success 1

execute align xyz if block ~0.5 ~1 ~0.5 #air if block ~0.5 ~2 ~0.5 #air run tp @s ~0.5 ~1 ~0.5
execute align xyz if block ~0.5 ~1 ~0.5 #air if block ~0.5 ~2 ~0.5 #air run playsound block.note_block.pling master @s ~ ~ ~ 1 2

#playsound minecraft:entity.enderman.teleport
#playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 0.2 0.9