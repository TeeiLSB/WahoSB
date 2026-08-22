## STR
# percent increaseの計算！
scoreboard players operation #perinc Temporary = $life Dungeon.Blessing
scoreboard players operation #perinc Temporary *= #3 Constant
scoreboard players operation #perinc Temporary += #100 Constant


#たす！！！
scoreboard players operation #perinc Temporary += #flatinc Temporary


# strにばいりつ
scoreboard players operation @s Status.Health *= #perinc Temporary
scoreboard players operation @s Status.Health /= #100 Constant


