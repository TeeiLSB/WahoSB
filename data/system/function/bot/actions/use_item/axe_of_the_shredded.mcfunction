# action中ですよー
scoreboard players set @s Bot.IsInAction 1


tag @s add This
execute anchored eyes positioned ^ ^ ^ run execute summon item_display run function system:ability/sword/axe_of_the_shredded_init
tag @s remove This


item replace entity @s weapon.mainhand with diamond_axe


scoreboard players set @s Bot.IsInAction 0
scoreboard players add @s Bot.ActionProcess 1