execute on attacker run tag @s add Attacker

# cap?
execute unless score @n[tag=Attacker] Status.MobAttackDamage matches 1.. run scoreboard players set @n[tag=Attacker] Status.MobAttackDamage 0

# calc defense
scoreboard players operation #damage Temporary = @n[tag=Attacker] Status.MobAttackDamage
scoreboard players operation #Temp Temporary = @s Status.Defense
scoreboard players add #Temp Temporary 100
scoreboard players operation #damage Temporary /= #Temp Temporary
scoreboard players operation #damage Temporary *= #100 Constant

# damage apply
scoreboard players operation @s[tag=!Invulnerable] Status.CurrentHealth -= #damage Temporary

tellraw @s {"score":{"name":"#damage",objective:"Temporary"}}
execute on attacker run tag @s remove Attacker