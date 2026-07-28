# goalのmarkerにThisGoalMarkerをつける
tag @s add This
execute as @e[type=marker,tag=Bot.GoalMarker] if score @s Bot.GoalMarkerID = @n[tag=This,tag=Bot,type=mannequin] Bot.GoalMarkerID run \
    tag @s add ThisGoalMarker
tag @s remove This

# facing


# toggle moving
scoreboard players set @s Bot.IsMoving 1


# tp
execute at @n[tag=ThisGoalMarker,type=marker] unless entity @s[distance=0] at @s facing entity @n[tag=ThisGoalMarker,type=marker] eyes positioned ^ ^ ^1.5 align xyz positioned ~0.5 ~0 ~0.5 run tp @s ~ ~ ~


# goalしたとき
execute at @n[tag=ThisGoalMarker,type=marker] if entity @s[distance=0] run scoreboard players set @s Bot.IsMoving 0
execute at @n[tag=ThisGoalMarker,type=marker] if entity @s[distance=0] run kill @e[tag=ThisGoalMarker]

# tag消し
tag @e[tag=ThisGoalMarker] remove ThisGoalMarker