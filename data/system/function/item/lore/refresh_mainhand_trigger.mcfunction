# refresh mainhand
tag @s add FromMainhand
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function system:item/lore/main/refresh_lore
item replace entity @s weapon.mainhand from block 0 0 0 container.0
data remove block 0 0 0 Items
tag @s remove FromMainhand



scoreboard players set @s PlayerRefreshTimer 1