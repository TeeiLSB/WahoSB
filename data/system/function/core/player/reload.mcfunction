# attack cooldown
 scoreboard players set @s Player.AttackCooldown 0

# create own team
 function system:core/player/generic/get_name
 function system:core/player/friendly_fire/team with storage lib: generic
 