scoreboard players remove @s Ferocity_CD 1
execute if score @s[tag=!Invulnerable] Ferocity_CD matches 0 run function system:core/player/stats/ferocity/damage_apply
