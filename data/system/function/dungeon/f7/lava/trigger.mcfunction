execute if score @s F7.LavaBounce.CD matches 0 align y run tp @s ~ ~1 ~
execute if score @s F7.LavaBounce.CD matches 0 run function system:api/motion/motion_apply {"x":"0","y":"24","z":"0","xm":"0","ym":"0","zm":"0"}
execute if score @s F7.LavaBounce.CD matches 0 run scoreboard players set @s F7.LavaBounce.CD 10