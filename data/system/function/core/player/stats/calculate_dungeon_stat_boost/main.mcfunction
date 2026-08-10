## ここは、star以外のboostだけだよ。 cataとgeneral medalionと最低保障(+1)だけ

# =
 scoreboard players operation #Cata Temporary = @s CatacombsLevel
 scoreboard players operation #Secret Temporary = @s PlayerSecretCount

scoreboard players set @s[scores={CatacombsLevel=..0}] DungeonStatBoost 10
scoreboard players set @s[scores={CatacombsLevel=1}] DungeonStatBoost 15
scoreboard players set @s[scores={CatacombsLevel=2}] DungeonStatBoost 20
scoreboard players set @s[scores={CatacombsLevel=3}] DungeonStatBoost 25
scoreboard players set @s[scores={CatacombsLevel=4}] DungeonStatBoost 31
scoreboard players set @s[scores={CatacombsLevel=5}] DungeonStatBoost 38
scoreboard players set @s[scores={CatacombsLevel=6}] DungeonStatBoost 46
scoreboard players set @s[scores={CatacombsLevel=7}] DungeonStatBoost 55
scoreboard players set @s[scores={CatacombsLevel=8}] DungeonStatBoost 65
scoreboard players set @s[scores={CatacombsLevel=9}] DungeonStatBoost 75
scoreboard players set @s[scores={CatacombsLevel=10}] DungeonStatBoost 85
scoreboard players set @s[scores={CatacombsLevel=11}] DungeonStatBoost 95
scoreboard players set @s[scores={CatacombsLevel=12}] DungeonStatBoost 105
scoreboard players set @s[scores={CatacombsLevel=13}] DungeonStatBoost 115
scoreboard players set @s[scores={CatacombsLevel=14}] DungeonStatBoost 125
scoreboard players set @s[scores={CatacombsLevel=15}] DungeonStatBoost 135
scoreboard players set @s[scores={CatacombsLevel=16}] DungeonStatBoost 145
scoreboard players set @s[scores={CatacombsLevel=17}] DungeonStatBoost 155
scoreboard players set @s[scores={CatacombsLevel=18}] DungeonStatBoost 165
scoreboard players set @s[scores={CatacombsLevel=19}] DungeonStatBoost 175
scoreboard players set @s[scores={CatacombsLevel=20}] DungeonStatBoost 185
scoreboard players set @s[scores={CatacombsLevel=21}] DungeonStatBoost 195
scoreboard players set @s[scores={CatacombsLevel=22}] DungeonStatBoost 205
scoreboard players set @s[scores={CatacombsLevel=23}] DungeonStatBoost 215
scoreboard players set @s[scores={CatacombsLevel=24}] DungeonStatBoost 225
scoreboard players set @s[scores={CatacombsLevel=25}] DungeonStatBoost 235
scoreboard players set @s[scores={CatacombsLevel=26}] DungeonStatBoost 245
scoreboard players set @s[scores={CatacombsLevel=27}] DungeonStatBoost 255
scoreboard players set @s[scores={CatacombsLevel=28}] DungeonStatBoost 265
scoreboard players set @s[scores={CatacombsLevel=29}] DungeonStatBoost 275
scoreboard players set @s[scores={CatacombsLevel=30}] DungeonStatBoost 285
scoreboard players set @s[scores={CatacombsLevel=31}] DungeonStatBoost 295
scoreboard players set @s[scores={CatacombsLevel=32}] DungeonStatBoost 305
scoreboard players set @s[scores={CatacombsLevel=33}] DungeonStatBoost 315
scoreboard players set @s[scores={CatacombsLevel=34}] DungeonStatBoost 325
scoreboard players set @s[scores={CatacombsLevel=35}] DungeonStatBoost 335
scoreboard players set @s[scores={CatacombsLevel=36}] DungeonStatBoost 345
scoreboard players set @s[scores={CatacombsLevel=37}] DungeonStatBoost 355
scoreboard players set @s[scores={CatacombsLevel=38}] DungeonStatBoost 365
scoreboard players set @s[scores={CatacombsLevel=39}] DungeonStatBoost 375
scoreboard players set @s[scores={CatacombsLevel=40}] DungeonStatBoost 385
scoreboard players set @s[scores={CatacombsLevel=41}] DungeonStatBoost 395
scoreboard players set @s[scores={CatacombsLevel=42}] DungeonStatBoost 405
scoreboard players set @s[scores={CatacombsLevel=43}] DungeonStatBoost 415
scoreboard players set @s[scores={CatacombsLevel=44}] DungeonStatBoost 425
scoreboard players set @s[scores={CatacombsLevel=45}] DungeonStatBoost 435
scoreboard players set @s[scores={CatacombsLevel=46}] DungeonStatBoost 445
scoreboard players set @s[scores={CatacombsLevel=47}] DungeonStatBoost 455
scoreboard players set @s[scores={CatacombsLevel=48}] DungeonStatBoost 465
scoreboard players set @s[scores={CatacombsLevel=49}] DungeonStatBoost 475
scoreboard players set @s[scores={CatacombsLevel=50..}] DungeonStatBoost 485

scoreboard players add @s[scores={PlayerSecretCount=1..}] DungeonStatBoost 1
scoreboard players add @s[scores={PlayerSecretCount=10..}] DungeonStatBoost 1
scoreboard players add @s[scores={PlayerSecretCount=100..}] DungeonStatBoost 1
scoreboard players add @s[scores={PlayerSecretCount=1000..}] DungeonStatBoost 1
scoreboard players add @s[scores={PlayerSecretCount=10000..}] DungeonStatBoost 1
scoreboard players add @s[scores={PlayerSecretCount=100000..}] DungeonStatBoost 1


# 最低保障 + multiplyだから
 scoreboard players add @s DungeonStatBoost 101