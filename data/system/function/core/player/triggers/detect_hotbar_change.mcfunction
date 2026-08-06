execute store result score @s CurrentHotbarSlot run data get entity @s SelectedItemSlot
execute unless score @s CurrentHotbarSlot = @s PreviousHotbarSlot run function system:core/player/inventory_hotbar_changed
scoreboard players operation @s PreviousHotbarSlot = @s CurrentHotbarSlot