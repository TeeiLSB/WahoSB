data merge entity @s {Invulnerable:1b,CustomNameVisible:1b,CustomName:{"text":"§bMage"},hide_description:true,Glowing:1b}

effect give @s resistance infinite 255 true
effect give @s fire_resistance infinite 255 true

attribute @s knockback_resistance base set 1000

# goal marker ID
execute store result score @s Bot.GoalMarkerID run data get entity @s UUID[0]

# moving
scoreboard players set @s Bot.IsMoving 0
# process
scoreboard players set @s Bot.ActionProcess 0
#in action
scoreboard players set @s Bot.IsInAction 0

tag @s add F7.Reset
tag @s add Invulnerable
tag @s add Bot.Mage
tag @s add Bot

tag @s add Dungeon.Class.Mage

team join Mage

item replace entity @s armor.head with player_head[profile={properties:[{name:"textures",\
        value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWNhNmFjODM5NmJhMmZhNjRiMGYyNzExZGNhMjAyMzJjN2E1MjkxMjZiOTZkYjZlZmFhOGQ3ZjJlMTg0MGQxIn19fQ=="}]},\
                ]

item replace entity @s armor.chest with recovery_compass[item_model=leather_chestplate,\
         dyed_color=1545156,equippable={slot:"chest",asset_id:leather}]

item replace entity @s armor.legs with recovery_compass[item_model=leather_leggings,\
         dyed_color=1550532,equippable={slot:"legs",asset_id:leather}]

item replace entity @s armor.feet with recovery_compass[item_model=leather_boots,\
         dyed_color=1889508,equippable={slot:"feet",asset_id:leather}]