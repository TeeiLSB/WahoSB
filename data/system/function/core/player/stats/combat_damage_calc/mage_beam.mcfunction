# mage beam
# Weapon Damage (+5)
scoreboard players operation #WeaponDamage Temporary = @s Status.WeaponDamage
scoreboard players operation #WeaponDamage Temporary += #5 Constant

# Mage Beam Scale
# 30% + (0.09% × Intelligence)
scoreboard players operation #Scale Temporary = @s Status.Intelligence
scoreboard players operation #Scale Temporary *= #9 Constant
scoreboard players operation #Scale Temporary += #3000 Constant

# Mage Beam Weapon Damage
scoreboard players operation #MageBeamWeaponDamage Temporary = #WeaponDamage Temporary
scoreboard players operation #MageBeamWeaponDamage Temporary *= #Scale Temporary
scoreboard players operation #MageBeamWeaponDamage Temporary /= #10000 Constant

# calc
# str
scoreboard players operation #DamageDealt Temporary *= #STR Temporary
# combat 60
scoreboard players operation #DamageDealt Temporary *= #2 Constant
# crit
scoreboard players operation #DamageDealt Temporary *= #CD Temporary

# Final Mage Beam Damage
scoreboard players operation #DamageDealt Temporary = #MageBeamWeaponDamage Temporary
scoreboard players operation #DamageDealt Temporary *= #STR Temporary
scoreboard players operation #DamageDealt Temporary *= #CD Temporary




execute if entity @s[tag=GoldenDragon] run scoreboard players operation #gdrag Temporary = #DamageDealt Temporary
execute if entity @s[tag=GoldenDragon] run scoreboard players operation #gdrag Temporary *= #3 Constant
execute if entity @s[tag=GoldenDragon] run scoreboard players operation #gdrag Temporary /= #2 Constant
execute if entity @s[tag=GoldenDragon] run scoreboard players operation #DamageDealt Temporary = #gdrag Temporary

scoreboard players reset #gdrag Temporary

execute if score #DamageDealt Temporary matches ..-1 run scoreboard players set #DamageDealt Temporary 2147483647


# Apply
scoreboard players operation @s Status.MageBeamDamage = #DamageDealt Temporary