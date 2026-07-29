scoreboard players remove @s[scores={Bot.Action.Wait=1..}] Bot.Action.Wait 1

scoreboard players set @s[scores={Bot.Action.Wait=0}] Bot.IsInAction 0
scoreboard players add @s[scores={Bot.Action.Wait=0}] Bot.ActionProcess 1
