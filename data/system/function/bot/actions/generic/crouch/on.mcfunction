
# action中ですよー
scoreboard players set @s Bot.IsInAction 1
data merge entity @s {pose:"crouching"}

scoreboard players set @s Bot.IsInAction 0
scoreboard players add @s Bot.ActionProcess 1