

# action中ですよー
scoreboard players set @s Bot.IsInAction 1


tag @s add This
tag @n[type=interaction,tag=F7.CrystalHitbox] add InteractionCrystal.This
execute at @n[type=interaction,tag=F7.CrystalHitbox] as @n[type=#teil:players,tag=This] unless entity @s[tag=F7.HasCrystal] run function system:dungeon/f7/p1/crystal/pickuped
tag @n[type=interaction,tag=F7.CrystalHitbox,tag=InteractionCrystal.This] remove InteractionCrystal.This
tag @s add This


scoreboard players set @s Bot.IsInAction 0
scoreboard players add @s Bot.ActionProcess 1