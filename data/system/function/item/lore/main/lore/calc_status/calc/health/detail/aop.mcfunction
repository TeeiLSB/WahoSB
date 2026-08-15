# あるならそれを代入 ないなら""
# aru
execute if data block 0 0 0 Items[0].components."minecraft:custom_data".Aop run \
 data modify storage temp: temp_lore.Aop set value " §c[+40]"
 execute if data block 0 0 0 Items[0].components."minecraft:custom_data".Aop run scoreboard players set #Aop Temporary 40
# nai
execute unless data block 0 0 0 Items[0].components."minecraft:custom_data".Aop run \
 data modify storage temp: temp_lore.Aop set value ""
 execute unless data block 0 0 0 Items[0].components."minecraft:custom_data".Aop run scoreboard players set #Aop Temporary 0