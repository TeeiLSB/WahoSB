# attack cooldown
 scoreboard players remove @s[scores={Player.AttackCooldown=1..}] Player.AttackCooldown 1 

# spring boots
scoreboard players reset @s[nbt={OnGround:false}] Item.Ability.SpringBoots

# speed
 function system:core/player/stats/main/speed/tick

# refresh timer
 scoreboard players remove @s[scores={PlayerRefreshTimer=1..}] PlayerRefreshTimer 1
 scoreboard players remove @s[scores={PlayerRefreshTimer.Armor=1..}] PlayerRefreshTimer.Armor 1
# wither からの攻撃とか
 effect clear @s wither


# speed check (block per secてきな)
function system:core/motion/speed_check/get

# detect hotbar change
function system:core/player/triggers/detect_hotbar_change