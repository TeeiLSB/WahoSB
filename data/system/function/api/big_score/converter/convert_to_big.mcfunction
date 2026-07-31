# b
scoreboard players operation $BS.B BigScore = #Converter BigScore
scoreboard players operation $BS.B BigScore /= #1000000000 Constant
scoreboard players operation #Converter BigScore %= #1000000000 Constant

# m
scoreboard players operation $BS.M BigScore = #Converter BigScore
scoreboard players operation $BS.M BigScore /= #1000000 Constant
scoreboard players operation #Converter BigScore %= #1000000 Constant

# k
scoreboard players operation $BS.K BigScore = #Converter BigScore
scoreboard players operation $BS.K BigScore /= #1000 Constant
scoreboard players operation #Converter BigScore %= #1000 Constant

# normal
scoreboard players operation $BS BigScore = #Converter BigScore




