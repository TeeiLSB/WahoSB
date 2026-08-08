item modify entity @s weapon.mainhand \
{\
 function: "set_lore",\
 mode:"replace_all",\
 lore: \
[[{"text":"§7Damage: §c+$(Damage)§e($(Potato))§8(+$(DungeonDamage))"}],\
[{"text":"§7Strength: §c+$(Str)§e($(Potato))$(Aow)§9(+§9(ReforgeStr))§8(+$(DungeonStr))"}],\
[{"text":"§7Crit Chance: §c+$(Cc)%§9(+§9(ReforgeCc))§8(+$(DungeonCc))"}],\
[{"text":"§7Crit Damage: §c+$(Cd)%§9(+§9(ReforgeCd))§8(+$(DungeonCd))"}],\
[{"text":"§7Bonus Attack Speed: §c+$(As)%§8(+$(DungeonAs))"}],\
[{"text":"§7Ferocity: §a+$(Fero)%§8(+$(DungeonFero))"}],\
[{"text":""}],\
 ]}