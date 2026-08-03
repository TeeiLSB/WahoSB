
# Mの繰り上げ
scoreboard players operation #calc BigScore = $BS.M BigScore
scoreboard players operation #calc BigScore /= #1000 Constant
scoreboard players operation $BS.B BigScore += #calc BigScore

scoreboard players operation #calc BigScore = $BS.M BigScore
scoreboard players operation #calc BigScore %= #1000 Constant
scoreboard players operation $BS.M BigScore = #calc BigScore


# Kの繰り上げ
scoreboard players operation #calc BigScore = $BS.K BigScore
scoreboard players operation #calc BigScore /= #1000 Constant
scoreboard players operation $BS.M BigScore += #calc BigScore

scoreboard players operation #calc BigScore = $BS.K BigScore
scoreboard players operation #calc BigScore %= #1000 Constant
scoreboard players operation $BS.K BigScore = #calc BigScore


# normalの繰り上げ
scoreboard players operation #calc BigScore = $BS BigScore
scoreboard players operation #calc BigScore /= #1000 Constant
scoreboard players operation $BS.K BigScore += #calc BigScore

scoreboard players operation #calc BigScore = $BS BigScore
scoreboard players operation #calc BigScore %= #1000 Constant
scoreboard players operation $BS BigScore = #calc BigScore


# Bの繰り上げはだめ (Tがないから)
execute if score $BS.B BigScore matches 1000.. run scoreboard players set $BS.B BigScore 999

execute if score $BS.M BigScore matches 1000.. run function system:api/big_score/normalize/run
execute if score $BS.K BigScore matches 1000.. run function system:api/big_score/normalize/run
execute if score $BS BigScore matches 1000.. run function system:api/big_score/normalize/run