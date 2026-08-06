# mage beam
# Weapon Damage (+5)
scoreboard players operation #WeaponDamage Temporary = @s Status.WeaponDamage
scoreboard players operation #WeaponDamage Temporary += #5 Constant

# Mage Beam Scale
# 30% + (0.09% × Intelligence)
scoreboard players operation #Scale Temporary = @s Status.Intelligence
scoreboard players operation #Scale Temporary *= #9 Constant
scoreboard players operation #Scale Temporary += #3000 Constant

# convert to per digit score
scoreboard players operation #Converter BigScore = #WeaponDamage Temporary
function system:api/big_score/converter/convert_to_big

# magebeam basedamage calc
scoreboard players operation #MultiplyBy BigScore = #Scale Temporary
function system:api/big_score/math/multiply
scoreboard players operation #DividedBy BigScore = #10000 Constant
function system:api/big_score/math/divide



# str
scoreboard players operation #MultiplyBy BigScore = #STR Temporary
function system:api/big_score/math/multiply

# enchantments sharp7 smite7 proscute6 = 50%+50%+100%+125% = 325% + combat 60 =210% ~~~ ==== 535%
scoreboard players set #MultiplyBy BigScore 535
function system:api/big_score/math/multiply
scoreboard players operation #DividedBy BigScore = #100 Constant
function system:api/big_score/math/divide

execute if items entity @s weapon.mainhand *[custom_data~{id:hyperion}] run scoreboard players set #MultiplyBy BigScore 3
execute if items entity @s weapon.mainhand *[custom_data~{id:hyperion}] run function system:api/big_score/math/multiply
execute if items entity @s weapon.mainhand *[custom_data~{id:hyperion}] run scoreboard players set #DividedBy BigScore 2
execute if items entity @s weapon.mainhand *[custom_data~{id:hyperion}] run function system:api/big_score/math/divide

# gdrag

scoreboard players operation #MultiplyBy BigScore = #3 Constant
function system:api/big_score/math/multiply
scoreboard players operation #DividedBy BigScore = #2 Constant
function system:api/big_score/math/divide

# crit
scoreboard players operation #MultiplyBy BigScore = #CD Temporary
function system:api/big_score/math/multiply






function system:api/big_score/normalize/run




scoreboard players operation @s Status.MageBeamDamage.b = $BS.B BigScore
scoreboard players operation @s Status.MageBeamDamage.m = $BS.M BigScore
scoreboard players operation @s Status.MageBeamDamage.k = $BS.K BigScore
scoreboard players operation @s Status.MageBeamDamage = $BS BigScore


#function system:api/big_score/converter/reset_scores

#execute if score #DamageDealt Temporary matches ..-1 run scoreboard players set #DamageDealt Temporary 2147483647


# Apply
#scoreboard players operation @s Status.MageBeamDamage = #DamageDealt Temporary