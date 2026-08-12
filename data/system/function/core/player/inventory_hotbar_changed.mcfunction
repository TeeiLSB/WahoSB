# dungeon stat boost
 function system:core/player/stats/calculate_dungeon_stat_boost/main


# refresh item lore and name

#ガチで頑張って掃除します
 scoreboard players reset #PotatoBook.Amount Temporary
 scoreboard players reset #Base Temporary
 scoreboard players reset #ForDungeon Temporary
 scoreboard players reset #StatBoost Temporary
 scoreboard players reset #Aop Temporary
 scoreboard players reset #Aow Temporary
 scoreboard players reset #StarAmount_Copy Temporary
 scoreboard players reset #StarAmount Temporary
 scoreboard players reset #CalcStar Temporary
 scoreboard players reset #Reforge Temporary
 scoreboard players reset #Gem_1 Temporary
 scoreboard players reset #Gem_2 Temporary


# mainhand
 function system:item/lore/main/refresh_lore
# armors
execute if score @s PlayerRefreshTimer matches 0 run function system:item/lore/refresh_trigger








function system:core/player/stats/combat_damage_calc/main

