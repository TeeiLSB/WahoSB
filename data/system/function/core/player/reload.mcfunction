# attack cooldown
 scoreboard players set @s Player.AttackCooldown 0

# f7s
 scoreboard players set @s F7.LavaBounce.CD 0

# create own team
 function system:core/player/generic/get_name
 function system:core/player/friendly_fire/team with storage lib: generic
 
# dungeon stat boost
 scoreboard objectives add DungeonStatBoost dummy
 scoreboard objectives add CatacombsLevel dummy

# refresh timer
 scoreboard players set @a PlayerRefreshTimer 10