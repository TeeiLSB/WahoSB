data merge entity @s {Invulnerable:1b,CustomNameVisible:1b,CustomName:{"text":"§6Archer"},hide_description:true,Glowing:1b}

effect give @s resistance infinite 255 true
effect give @s fire_resistance infinite 255 true

attribute @s knockback_resistance base set 1000

scoreboard players set @s Status.ArrowDamage 200000000
scoreboard players set @s Status.MeleeDamage 20000000

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
tag @s add Bot.Archer
tag @s add Bot

tag @s add Dungeon.Class.Archer

team join Archer

item replace entity @s armor.head with player_head\
        [item_name={"text":"Diamond Necron Head","color":red},custom_data={id:diamond_necron_head},\
        profile={properties:[{name:"textures",\
        value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGIxMTVjZGM0NWZkODRmMjFmYmE3YWMwZjJiYzc3YmMzYjYzMDJiZTY3MDg0MmY2ZTExZjY2ZWI1NTdmMTNlZSJ9fX0="}]},\
                attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1000000000,operation:"add_value",slot:"hand"}]]

item replace entity @s armor.chest with recovery_compass\
        [item_name={"text":"Skeleton Master Chestplate","color":gold},custom_data={id:skeleton_master_chestplate},\
        item_model=leather_chestplate,\
         dyed_color=16739083,equippable={slot:"chest",asset_id:leather}]

item replace entity @s armor.legs with recovery_compass\
        [item_name={"text":"Necron's leggings","color":gold},custom_data={id:necrons_leggings},\
        item_model=leather_leggings,\
         dyed_color=15162428,equippable={slot:"legs",asset_id:leather}]

item replace entity @s armor.feet with recovery_compass\
        [item_name={"text":"Maxor's Boots","color":gold},custom_data={id:maxors_boots},\
        attribute_modifiers=[\
                        {id:"movement_speed",type:"movement_speed",amount:3,operation: "add_multiplied_base",slot:"feet"}],item_model=leather_boots,\
         dyed_color=9005512,equippable={slot:"feet",asset_id:leather}]
