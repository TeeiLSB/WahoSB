execute store result score #StarAmount Temporary run data get block 0 0 0 Items[0].components."minecraft:custom_data".Star

 ## star
 # max50%
 scoreboard players operation #StarAmount_Copy Temporary = #StarAmount Temporary
 scoreboard players operation #StarAmount_Copy Temporary *= #10 Constant
 scoreboard players operation #StatBoost Temporary += #StarAmount_Copy Temporary
# max 10%
 scoreboard players operation #StarAmount_Copy Temporary = #StarAmount Temporary
 scoreboard players operation #StarAmount_Copy Temporary *= #2 Constant
 scoreboard players operation #StatBoost Temporary += #StarAmount_Copy Temporary