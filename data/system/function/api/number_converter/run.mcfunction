#cleanup
scoreboard players reset #d1b Temporary
scoreboard players reset #d100m Temporary
scoreboard players reset #d10m Temporary
scoreboard players reset #d1m Temporary
scoreboard players reset #d100k Temporary
scoreboard players reset #d10k Temporary
scoreboard players reset #d1k Temporary
scoreboard players reset #d100 Temporary
scoreboard players reset #d10 Temporary
scoreboard players reset #d1 Temporary

scoreboard players reset #started Temporary

# 1,000,000,000の位
scoreboard players operation #d1b Temporary = #num Temporary
scoreboard players operation #d1b Temporary /= #1000000000 Constant
scoreboard players operation #num Temporary %= #1000000000 Constant
execute if score #d1b Temporary matches 1.. run scoreboard players set #started Temporary 1
execute unless score #started Temporary matches 1 run scoreboard players reset #d1b Temporary

# 100,000,000の位
scoreboard players operation #d100m Temporary = #num Temporary
scoreboard players operation #d100m Temporary /= #100000000 Constant
scoreboard players operation #num Temporary %= #100000000 Constant
execute if score #d100m Temporary matches 1.. run scoreboard players set #started Temporary 1
execute unless score #started Temporary matches 1 run scoreboard players reset #d100m Temporary

# 10,000,000の位
scoreboard players operation #d10m Temporary = #num Temporary
scoreboard players operation #d10m Temporary /= #10000000 Constant
scoreboard players operation #num Temporary %= #10000000 Constant
execute if score #d10m Temporary matches 1.. run scoreboard players set #started Temporary 1
execute unless score #started Temporary matches 1 run scoreboard players reset #d10m Temporary

# 1,000,000の位
scoreboard players operation #d1m Temporary = #num Temporary
scoreboard players operation #d1m Temporary /= #1000000 Constant
scoreboard players operation #num Temporary %= #1000000 Constant
execute if score #d1m Temporary matches 1.. run scoreboard players set #started Temporary 1
execute unless score #started Temporary matches 1 run scoreboard players reset #d1m Temporary

# 100,000の位
scoreboard players operation #d100k Temporary = #num Temporary
scoreboard players operation #d100k Temporary /= #100000 Constant
scoreboard players operation #num Temporary %= #100000 Constant
execute if score #d100k Temporary matches 1.. run scoreboard players set #started Temporary 1
execute unless score #started Temporary matches 1 run scoreboard players reset #d100k Temporary

# 10,000の位
scoreboard players operation #d10k Temporary = #num Temporary
scoreboard players operation #d10k Temporary /= #10000 Constant
scoreboard players operation #num Temporary %= #10000 Constant
execute if score #d10k Temporary matches 1.. run scoreboard players set #started Temporary 1
execute unless score #started Temporary matches 1 run scoreboard players reset #d10k Temporary

# 1,000の位
scoreboard players operation #d1k Temporary = #num Temporary
scoreboard players operation #d1k Temporary /= #1000 Constant
scoreboard players operation #num Temporary %= #1000 Constant
execute if score #d1k Temporary matches 1.. run scoreboard players set #started Temporary 1
execute unless score #started Temporary matches 1 run scoreboard players reset #d1k Temporary

# 100の位
scoreboard players operation #d100 Temporary = #num Temporary
scoreboard players operation #d100 Temporary /= #100 Constant
scoreboard players operation #num Temporary %= #100 Constant
execute if score #d100 Temporary matches 1.. run scoreboard players set #started Temporary 1
execute unless score #started Temporary matches 1 run scoreboard players reset #d100 Temporary

# 10の位
scoreboard players operation #d10 Temporary = #num Temporary
scoreboard players operation #d10 Temporary /= #10 Constant
scoreboard players operation #num Temporary %= #10 Constant
execute if score #d10 Temporary matches 1.. run scoreboard players set #started Temporary 1
execute unless score #started Temporary matches 1 run scoreboard players reset #d10 Temporary

# 1の位（必ず表示）
scoreboard players operation #d1 Temporary = #num Temporary
execute store result storage lib: NumberDigit.1 int 1 run scoreboard players get #d1 Temporary