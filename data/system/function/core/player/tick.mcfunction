# attack cooldown
 scoreboard players remove @s[scores={Player.AttackCooldown=1..}] Player.AttackCooldown 1 

# spring boots
scoreboard players reset @s[nbt={OnGround:false}] Item.Ability.SpringBoots

# speed
 function system:core/player/stats/main/speed/tick

# health
 function system:core/player/stats/main/health/tick

# int
 function system:core/player/stats/main/intelligence/tick













# refresh timer
 scoreboard players remove @s[scores={PlayerRefreshTimer=1..}] PlayerRefreshTimer 1
 scoreboard players remove @s[scores={PlayerRefreshTimer.Armor=1..}] PlayerRefreshTimer.Armor 1
# wither からの攻撃とか
 effect clear @s wither

 # enchant saddle for damage detection
  item modify entity @s saddle {"function": set_enchantments,enchantments:{"system:player/entity_hurt_player":1}}

# acitonbar
 function system:core/player/actionbar/main

# speed check (block per secてきな)
function system:core/motion/speed_check/get

# detect hotbar change
function system:core/player/triggers/detect_hotbar_change