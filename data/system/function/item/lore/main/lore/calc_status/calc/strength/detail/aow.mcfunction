# あるならそれを代入 ないなら""
# aru
execute if data block 0 0 0 Items[0].components."minecraft:custom_data".Aow run \
 data modify storage temp: temp_lore.Aow set value " §6[+5]"
 execute if data block 0 0 0 Items[0].components."minecraft:custom_data".Aow run scoreboard players set #Aow Temporary 5
# nai
execute unless data block 0 0 0 Items[0].components."minecraft:custom_data".Aow run \
 data modify storage temp: temp_lore.Aow set value ""
 execute unless data block 0 0 0 Items[0].components."minecraft:custom_data".Aow run scoreboard players set #Aow Temporary 0