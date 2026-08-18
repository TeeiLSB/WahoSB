# action中ですよー
scoreboard players set @s Bot.IsInAction 1


playsound entity.arrow.shoot master @s ~ ~ ~ 0.3 1.2
tag @s add Shooter
execute at @s anchored eyes positioned ^ ^ ^1.75 rotated as @s rotated ~ ~ summon arrow run function system:ability/bow/terminator/arrow/init
execute at @s anchored eyes positioned ^ ^ ^1.75 rotated as @s rotated ~4 ~1.75 summon arrow run function system:ability/bow/terminator/arrow/init
execute at @s anchored eyes positioned ^ ^ ^1.75 rotated as @s rotated ~-4 ~1.75 summon arrow run function system:ability/bow/terminator/arrow/init
tag @s remove Shooter


item replace entity @s weapon.mainhand with bow
swing @s mainhand

scoreboard players set @s Bot.IsInAction 0
scoreboard players add @s Bot.ActionProcess 1
