execute store result score #StarAmount Temporary run data get block 0 0 0 Items[0].components."minecraft:custom_data".Star
execute store result score #MasterStarAmount Temporary run data get block 0 0 0 Items[0].components."minecraft:custom_data".MStar

# non dungeonized item
 execute unless items block 0 0 0 container.0 *[custom_data~{Dungeonized:1}] run scoreboard players set #StatBoost Temporary 100

 ## star
 # max50%
 scoreboard players operation #StarAmount_Copy Temporary = #StarAmount Temporary
 scoreboard players operation #StarAmount_Copy Temporary *= #10 Constant
 scoreboard players operation #StatBoost Temporary += #StarAmount_Copy Temporary
# max 10%
 scoreboard players operation #StarAmount_Copy Temporary = #StarAmount Temporary
 scoreboard players operation #StarAmount_Copy Temporary *= #2 Constant
 scoreboard players operation #StatBoost Temporary += #StarAmount_Copy Temporary

 # mstar
  # max25%
 scoreboard players operation #StarAmount_Copy Temporary = #MasterStarAmount Temporary
 scoreboard players operation #StarAmount_Copy Temporary *= #5 Constant
 scoreboard players operation #StatBoost Temporary += #StarAmount_Copy Temporary