# attack cooldown
 scoreboard players remove @s[scores={Player.AttackCooldown=1..}] Player.AttackCooldown 1 

# spring boots
scoreboard players reset @s[nbt={OnGround:false}] Item.Ability.SpringBoots

# damage calc *将来的には軽量化のためにインベントリが変わったときとかホットバーが変わった時だけに発動
function system:core/player/stats/combat_damage_calc/main


# wither からの攻撃とか
 effect clear @s wither