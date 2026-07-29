# goalのmarkerにThisGoalMarkerをつける
tag @s add This
execute as @e[type=marker,tag=Bot.GoalMarker] if score @s Bot.GoalMarkerID = @n[tag=This,tag=Bot,type=mannequin] Bot.GoalMarkerID run \
    tag @s add ThisGoalMarker
tag @s remove This




# tp and toggle moving
execute at @n[tag=ThisGoalMarker,type=marker] unless entity @s[distance=0] at @s facing entity @n[tag=ThisGoalMarker,type=marker] eyes rotated ~ ~ positioned ^ ^ ^1.42 align xyz positioned ~0.5 ~0 ~0.5 run scoreboard players set @s Bot.IsMoving 1
execute at @n[tag=ThisGoalMarker,type=marker] unless entity @s[distance=0] at @s facing entity @n[tag=ThisGoalMarker,type=marker] eyes rotated ~ ~ positioned ^ ^ ^1.42 align xyz positioned ~0.5 ~0 ~0.5 run tp @s ~ ~ ~




# goalしたとき
execute at @n[tag=ThisGoalMarker,type=marker] if entity @s[distance=0] run function system:bot/main/when_reached_goal

# goalしたらmarkerをkill
 execute if score @s Bot.IsMoving matches 0 as @n[tag=ThisGoalMarker,type=marker] run kill @s


# tag消し
tag @e[tag=ThisGoalMarker] remove ThisGoalMarker