## STR
# percent increaseの計算！
scoreboard players operation #perinc Temporary = $Wisdom Dungeon.Blessing
scoreboard players operation #perinc Temporary *= #2 Constant
scoreboard players operation #perinc Temporary += #100 Constant

# flat increaseの計算！
scoreboard players operation #flatinc Temporary = $Wisdom Dungeon.Blessing
scoreboard players operation #flatinc Temporary *= #4 Constant

#たす！！！
scoreboard players operation #perinc Temporary += #flatinc Temporary


# strにばいりつ
scoreboard players operation @s Status.Intelligence *= #perinc Temporary
scoreboard players operation @s Status.Intelligence /= #100 Constant
