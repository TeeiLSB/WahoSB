

# base damage +5
scoreboard players operation #DamageDealt Temporary = @s Status.BaseAbilityDamage
scoreboard players operation #DamageDealt Temporary += #5 Constant

# 1+ int/100 
scoreboard players operation #INT Temporary = @s Status.Intelligence
scoreboard players operation #INT Temporary /= #100 Constant
scoreboard players operation #INT Temporary += #1 Constant

# ability damage
scoreboard players operation #INT Temporary *= @s Status.AbilityDamage
scoreboard players operation #INT Temporary /= #10 Constant

# calc
# int
scoreboard players operation #DamageDealt Temporary *= #INT Temporary
# combat 60
scoreboard players operation #DamageDealt Temporary *= #2 Constant




execute if entity @s[tag=GoldenDragon] run scoreboard players operation #gdrag Temporary = #DamageDealt Temporary
execute if entity @s[tag=GoldenDragon] run scoreboard players operation #gdrag Temporary *= #3 Constant
execute if entity @s[tag=GoldenDragon] run scoreboard players operation #gdrag Temporary /= #2 Constant
execute if entity @s[tag=GoldenDragon] run scoreboard players operation #DamageDealt Temporary = #gdrag Temporary

scoreboard players reset #gdrag Temporary

execute if score #DamageDealt Temporary matches ..-1 run scoreboard players set #DamageDealt Temporary 2147483647

# apply
scoreboard players operation @s Status.MagicDamage = #DamageDealt Temporary


