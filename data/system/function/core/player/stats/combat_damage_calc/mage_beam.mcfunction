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

# convert to per digit score
scoreboard players operation #Converter BigScore = #WeaponDamage Temporary
function system:api/big_score/converter/convert_to_big
scoreboard players operation $BS.B BigScore *= #Scale Temporary
scoreboard players operation $BS.B BigScore /= #10000 Constant

scoreboard players operation $BS.M BigScore *= #Scale Temporary
scoreboard players operation $BS.M BigScore /= #10000 Constant

scoreboard players operation $BS.K BigScore *= #Scale Temporary
scoreboard players operation $BS.K BigScore /= #10000 Constant

scoreboard players operation $BS BigScore *= #Scale Temporary
scoreboard players operation $BS BigScore /= #10000 Constant

# str
scoreboard players operation $BS.B BigScore *= #STR Temporary
scoreboard players operation $BS.M BigScore *= #STR Temporary
scoreboard players operation $BS.K BigScore *= #STR Temporary
scoreboard players operation $BS BigScore *= #STR Temporary

# combat 60
scoreboard players operation $BS.B BigScore *= #2 Constant
scoreboard players operation $BS.M BigScore *= #2 Constant
scoreboard players operation $BS.K BigScore *= #2 Constant
scoreboard players operation $BS BigScore *= #2 Constant

# crit
scoreboard players operation $BS.B BigScore *= #CD Temporary
scoreboard players operation $BS.M BigScore *= #CD Temporary
scoreboard players operation $BS.K BigScore *= #CD Temporary
scoreboard players operation $BS BigScore *= #CD Temporary



function system:api/big_score/normalize/run
scoreboard players operation @s Status.MageBeamDamage.b = $BS.B BigScore
scoreboard players operation @s Status.MageBeamDamage.m = $BS.M BigScore
scoreboard players operation @s Status.MageBeamDamage.k = $BS.K BigScore
scoreboard players operation @s Status.MageBeamDamage = $BS BigScore
#function system:api/big_score/converter/reset_scores

#execute if score #DamageDealt Temporary matches ..-1 run scoreboard players set #DamageDealt Temporary 2147483647


# Apply
#scoreboard players operation @s Status.MageBeamDamage = #DamageDealt Temporary