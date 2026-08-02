# B → M

# calc = B % DividedBy
scoreboard players operation #calc BigScore = $BS.B BigScore
scoreboard players operation #calc BigScore %= #DividedBy BigScore
scoreboard players operation #calc BigScore *= #1000 Constant
scoreboard players operation $BS.M BigScore += #calc BigScore

# B = B / DividedBy
scoreboard players operation $BS.B BigScore /= #DividedBy BigScore


# M → K

# calc = M % DividedBy
scoreboard players operation #calc BigScore = $BS.M BigScore
scoreboard players operation #calc BigScore %= #DividedBy BigScore
scoreboard players operation #calc BigScore *= #1000 Constant
scoreboard players operation $BS.K BigScore += #calc BigScore

# M = M / DividedBy
scoreboard players operation $BS.M BigScore /= #DividedBy BigScore


# K → Normal

# calc = K % DividedBy
scoreboard players operation #calc BigScore = $BS.K BigScore
scoreboard players operation #calc BigScore %= #DividedBy BigScore
scoreboard players operation #calc BigScore *= #1000 Constant
scoreboard players operation $BS BigScore += #calc BigScore

# K = K / DividedBy
scoreboard players operation $BS.K BigScore /= #DividedBy BigScore


# Normal

scoreboard players operation $BS BigScore /= #DividedBy BigScore