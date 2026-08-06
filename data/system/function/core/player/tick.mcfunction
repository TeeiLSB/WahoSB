# attack cooldown
 scoreboard players remove @s[scores={Player.AttackCooldown=1..}] Player.AttackCooldown 1 

# spring boots
scoreboard players reset @s[nbt={OnGround:false}] Item.Ability.SpringBoots



# wither からの攻撃とか
 effect clear @s wither


# speed check
function system:core/motion/speed_check/get

# detect hotbar change
function system:core/player/triggers/detect_hotbar_change