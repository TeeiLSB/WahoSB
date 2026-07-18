execute as @a[tag=Dungeon.Class.Mage] at @s run function system:dungeon/class/mage/tick
# mage beam replacement
execute as @a[tag=!Dungeon.Class.Mage] at @s run function system:dungeon/class/mage/mage_beam/revert_item_component