execute store result score #Star_amout Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".Star
execute store result score #Master_Star_amout Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".MStar

execute if score #Star_amout Temporary matches 0 run data modify storage temp: temp_item.Star set value ""
execute if score #Star_amout Temporary matches 1 run data modify storage temp: temp_item.Star set value " §6✪"
execute if score #Star_amout Temporary matches 2 run data modify storage temp: temp_item.Star set value " §6✪✪"
execute if score #Star_amout Temporary matches 3 run data modify storage temp: temp_item.Star set value " §6✪✪✪"
execute if score #Star_amout Temporary matches 4 run data modify storage temp: temp_item.Star set value " §6✪✪✪✪"
execute if score #Star_amout Temporary matches 5.. run data modify storage temp: temp_item.Star set value " §6✪✪✪✪✪"

execute if score #Master_Star_amout Temporary matches 1 run data modify storage temp: temp_item.Star set value " §c✪§6✪✪✪✪"
execute if score #Master_Star_amout Temporary matches 2 run data modify storage temp: temp_item.Star set value " §c✪✪§6✪✪✪"
execute if score #Master_Star_amout Temporary matches 3 run data modify storage temp: temp_item.Star set value " §c✪✪✪§6✪✪"
execute if score #Master_Star_amout Temporary matches 4 run data modify storage temp: temp_item.Star set value " §c✪✪✪✪§6✪"
execute if score #Master_Star_amout Temporary matches 5.. run data modify storage temp: temp_item.Star set value " §c✪✪✪✪✪"
