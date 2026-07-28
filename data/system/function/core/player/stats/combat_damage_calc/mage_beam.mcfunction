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

# Strength
scoreboard players operation #STR Temporary = @s Status.Strength
scoreboard players operation #STR Temporary /= #100 Constant
scoreboard players operation #STR Temporary += #1 Constant

# Crit Damage
scoreboard players operation #CD Temporary = @s Status.CritDamage
scoreboard players operation #CD Temporary /= #100 Constant
scoreboard players operation #CD Temporary += #1 Constant

# Final Mage Beam Damage
scoreboard players operation #MageBeamDamage Temporary = #MageBeamWeaponDamage Temporary
scoreboard players operation #MageBeamDamage Temporary *= #STR Temporary
scoreboard players operation #MageBeamDamage Temporary *= #CD Temporary

# Apply
scoreboard players operation @s Status.MageBeamDamage = #MageBeamDamage Temporary