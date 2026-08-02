## STR
# percent increaseの計算！
scoreboard players operation #perinc Temporary = $Power Dungeon.Blessing
scoreboard players operation #perinc Temporary *= #2 Constant
scoreboard players operation #perinc Temporary += #100 Constant

# flat increaseの計算！
scoreboard players operation #flatinc Temporary = $Power Dungeon.Blessing
scoreboard players operation #flatinc Temporary *= #4 Constant

#たす！！！
scoreboard players operation #perinc Temporary += #flatinc Temporary


# strにばいりつ
scoreboard players operation @s Status.Strength *= #perinc Temporary
scoreboard players operation @s Status.Strength /= #100 Constant



## CD
# percent increaseの計算！
scoreboard players operation #perinc Temporary = $Power Dungeon.Blessing
scoreboard players operation #perinc Temporary *= #2 Constant
scoreboard players operation #perinc Temporary += #100 Constant

# flat increaseの計算！
scoreboard players operation #flatinc Temporary = $Power Dungeon.Blessing
scoreboard players operation #flatinc Temporary *= #4 Constant

#たす！！！
scoreboard players operation #perinc Temporary += #flatinc Temporary


# strにばいりつ
scoreboard players operation @s Status.CritDamage *= #perinc Temporary
scoreboard players operation @s Status.CritDamage /= #100 Constant

