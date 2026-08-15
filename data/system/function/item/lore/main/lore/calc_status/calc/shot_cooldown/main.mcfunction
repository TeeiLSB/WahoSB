# storageに保存
execute if score @s Status.AttackSpeed matches 0..11 run data modify storage temp: temp_lore.Base set value "§7Shot Cooldown: §a0.5s"
execute if score @s Status.AttackSpeed matches 12..24 run data modify storage temp: temp_lore.Base set value "§7Shot Cooldown: §a0.45s"
execute if score @s Status.AttackSpeed matches 25..42 run data modify storage temp: temp_lore.Base set value "§7Shot Cooldown: §a0.40s"
execute if score @s Status.AttackSpeed matches 43..66 run data modify storage temp: temp_lore.Base set value "§7Shot Cooldown: §a0.35s"
execute if score @s Status.AttackSpeed matches 67..99 run data modify storage temp: temp_lore.Base set value "§7Shot Cooldown: §a0.30s"
execute if score @s Status.AttackSpeed matches 100..149 run data modify storage temp: temp_lore.Base set value "§7Shot Cooldown: §a0.25s"
execute if score @s Status.AttackSpeed matches 150.. run data modify storage temp: temp_lore.Base set value "§7Shot Cooldown: §a0.20s"

# lore生成
 execute if items block 0 0 0 container.0 *[custom_data~{WeaponType:bow}] run \
 function system:item/lore/main/lore/calc_status/store/shot_cooldown/main with storage temp: temp_lore