$function system:api/motion/motion_apply {"x":"0","y":"$(level)","z":"0","xm":"0","ym":"0","zm":"0"}
playsound minecraft:entity.firework_rocket.launch master @s ^ ^ ^ 1 2
data remove storage temp: jump
scoreboard players reset @s Item.Ability.SpringBoots