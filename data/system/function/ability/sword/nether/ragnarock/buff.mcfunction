scoreboard players set @s Item.Ability.Ragnacrock.Duration 200
playsound minecraft:entity.wolf.whine master @s ^ ^ ^ 1


scoreboard players operation @s Status.BonusStrength = @s MainHand.Str
scoreboard players operation @s Status.BonusStrength *= #3 Constant
scoreboard players operation @s Status.BonusStrength /= #2 Constant

function system:core/player/stats/combat_damage_calc/main

tellraw @s [{"text":"§aGained Strength: "},{"score":{name:"@s",objective:"Status.BonusStrength"},color:"red"}]

