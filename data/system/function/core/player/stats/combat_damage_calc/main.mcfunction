# get status
function system:core/player/stats/combat_damage_calc/get_stats/basedamage
function system:core/player/stats/combat_damage_calc/get_stats/critdamage
function system:core/player/stats/combat_damage_calc/get_stats/strength
function system:core/player/stats/combat_damage_calc/get_stats/intelligence
function system:core/player/stats/combat_damage_calc/get_stats/abilitydamage
function system:core/player/stats/combat_damage_calc/get_stats/baseabilitydamage

# dungeon buff
scoreboard players operation @s Status.Strength *= $Power Dungeon.Blessing
scoreboard players operation @s Status.Strength /= #10 Constant

scoreboard players operation @s Status.CritDamage *= $Power Dungeon.Blessing
scoreboard players operation @s Status.CritDamage /= #10 Constant

scoreboard players operation @s Status.Intelligence *= $Wisdom Dungeon.Blessing
scoreboard players operation @s Status.Intelligence /= #10 Constant


# base damage +5
scoreboard players operation #DamageDealt Temporary = @s Status.WeaponDamage
scoreboard players operation #DamageDealt Temporary += #5 Constant

# 1+ str/100 
scoreboard players operation #STR Temporary = @s Status.Strength
scoreboard players operation #STR Temporary /= #100 Constant
scoreboard players operation #STR Temporary += #1 Constant


# crit damage (1+Crit/100) 
scoreboard players operation #CD Temporary = @s Status.CritDamage
scoreboard players operation #CD Temporary /= #100 Constant
scoreboard players operation #CD Temporary += #1 Constant

# calc
# str
scoreboard players operation #DamageDealt Temporary *= #STR Temporary
# combat 60
scoreboard players operation #DamageDealt Temporary *= #2 Constant
# crit
scoreboard players operation #DamageDealt Temporary *= #CD Temporary



execute if entity @s[tag=GoldenDragon] run scoreboard players operation #gdrag Temporary = #DamageDealt Temporary
execute if entity @s[tag=GoldenDragon] run scoreboard players operation #gdrag Temporary *= #3 Constant
execute if entity @s[tag=GoldenDragon] run scoreboard players operation #gdrag Temporary /= #2 Constant
execute if entity @s[tag=GoldenDragon] run scoreboard players operation #DamageDealt Temporary = #gdrag Temporary

scoreboard players reset #gdrag Temporary

execute if score #DamageDealt Temporary matches ..-1 run scoreboard players set #DamageDealt Temporary 2147483647

# apply
scoreboard players operation @s Status.MeleeDamage = #DamageDealt Temporary
scoreboard players operation @s Status.ArrowDamage = #DamageDealt Temporary

function system:core/player/stats/combat_damage_calc/magic

execute if entity @s[tag=Dungeon.Class.Mage] run function system:core/player/stats/combat_damage_calc/mage_beam


# status check actionbar
title @s actionbar ["§7BASE ",{"score":{"name":"@s","objective":"Status.WeaponDamage"}},"        §cSTR ",{"score":{"name":"@s","objective":"Status.Strength"}},"        §9CD ",{"score":{"name":"@s","objective":"Status.CritDamage"}},"        §a= Dealt ",{"score":{"name":"@s","objective":"Status.MeleeDamage"}},"      §bInt ",{"score":{"name":"@s","objective":"Status.Intelligence"}},"      §d=Beam ",{"score":{"name":"@s","objective":"Status.MageBeamDamage"}},"      §c=ABD ",{"score":{"name":"@s","objective":"Status.AbilityDamage"}},"      §a=BAD ",{"score":{"name":"@s","objective":"Status.BaseAbilityDamage"}},"      §a=MGD ",{"score":{"name":"@s","objective":"Status.MagicDamage"}}]
