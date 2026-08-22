## STR
# percent increaseの計算！
scoreboard players operation #perinc Temporary = $Stone Dungeon.Blessing
scoreboard players operation #perinc Temporary *= #2 Constant
scoreboard players operation #perinc Temporary += #100 Constant

# flat increaseの計算！
scoreboard players operation #flatinc Temporary = $Stone Dungeon.Blessing
scoreboard players operation #flatinc Temporary *= #4 Constant

#たす！！！
scoreboard players operation #perinc Temporary += #flatinc Temporary


# strにばいりつ
scoreboard players operation @s Status.Defense *= #perinc Temporary
scoreboard players operation @s Status.Defense /= #100 Constant


