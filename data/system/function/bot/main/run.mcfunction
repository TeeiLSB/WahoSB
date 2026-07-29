function system:bot/main/summon_goal_marker
tag @s add This
execute as @e[type=marker,tag=Bot.GoalMarker] if score @s Bot.GoalMarkerID = @n[tag=This,tag=Bot,type=mannequin] Bot.GoalMarkerID run \
    tag @s add ThisGoalMarker
tag @s remove This
rotate @s facing entity @n[type=marker,tag=ThisGoalMarker]

# action中ですよー
scoreboard players set @s Bot.IsInAction 1


tag @e[tag=ThisGoalMarker] remove ThisGoalMarker
