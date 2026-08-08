execute store result score #Star_amout Temporary run data get entity @s SelectedItem.components."minecraft:custom_data".Star

execute if score #Star_amout Temporary matches 0 run data modify storage temp: temp_item.Star set value ""
execute if score #Star_amout Temporary matches 1 run data modify storage temp: temp_item.Star set value " §6✪"
execute if score #Star_amout Temporary matches 2 run data modify storage temp: temp_item.Star set value " §6✪✪"
execute if score #Star_amout Temporary matches 3 run data modify storage temp: temp_item.Star set value " §6✪✪✪"
execute if score #Star_amout Temporary matches 4 run data modify storage temp: temp_item.Star set value " §6✪✪✪✪"
execute if score #Star_amout Temporary matches 5 run data modify storage temp: temp_item.Star set value " §6✪✪✪✪✪"

execute if score #Star_amout Temporary matches 6 run data modify storage temp: temp_item.Star set value " §c✪§6✪✪✪✪"
execute if score #Star_amout Temporary matches 7 run data modify storage temp: temp_item.Star set value " §c✪✪§6✪✪✪"
execute if score #Star_amout Temporary matches 8 run data modify storage temp: temp_item.Star set value " §c✪✪✪§6✪✪"
execute if score #Star_amout Temporary matches 9 run data modify storage temp: temp_item.Star set value " §c✪✪✪✪§6✪"
execute if score #Star_amout Temporary matches 10 run data modify storage temp: temp_item.Star set value " §c✪✪✪✪✪"
