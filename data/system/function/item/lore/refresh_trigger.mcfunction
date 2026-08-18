
tag @s add FromHead
item replace block 0 0 0 container.0 from entity @s armor.head
function system:item/lore/main/refresh_lore
item replace entity @s armor.head from block 0 0 0 container.0
data remove block 0 0 0 Items
tag @s remove FromHead

tag @s add FromChest
item replace block 0 0 0 container.0 from entity @s armor.chest
function system:item/lore/main/refresh_lore
item replace entity @s armor.chest from block 0 0 0 container.0
data remove block 0 0 0 Items
tag @s remove FromChest

tag @s add FromLegs
item replace block 0 0 0 container.0 from entity @s armor.legs
function system:item/lore/main/refresh_lore
item replace entity @s armor.legs from block 0 0 0 container.0
data remove block 0 0 0 Items
tag @s remove FromLegs

tag @s add FromFeet
item replace block 0 0 0 container.0 from entity @s armor.feet
function system:item/lore/main/refresh_lore
item replace entity @s armor.feet from block 0 0 0 container.0
data remove block 0 0 0 Items
tag @s remove FromFeet



scoreboard players set @s PlayerRefreshTimer.Armor 10