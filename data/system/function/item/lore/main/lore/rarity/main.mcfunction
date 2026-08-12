# reset
 data remove storage temp: rarity

# main
 
 # DWNAUDBNSHUABUDYCDHBAWU
execute if items entity @s weapon.mainhand *[custom_data~{Recom:1}] run data modify storage temp: rarity.recom1 set value "§k§la "
execute if items entity @s weapon.mainhand *[custom_data~{Recom:1}] run data modify storage temp: rarity.recom2 set value " §k§la"
execute unless items entity @s weapon.mainhand *[custom_data~{Recom:1}] run data modify storage temp: rarity.recom1 set value ""
execute unless items entity @s weapon.mainhand *[custom_data~{Recom:1}] run data modify storage temp: rarity.recom2 set value ""

# DUNGENIZE
execute if items entity @s weapon.mainhand *[custom_data~{Dungeonized:1}] run data modify storage temp: rarity.dungeon set value " §lDUNGEON"
execute unless items entity @s weapon.mainhand *[custom_data~{Dungeonized:1}] run data modify storage temp: rarity.dungeon set value ""

# color
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:1}] run data modify storage temp: rarity.color set value "§f§l"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:2}] run data modify storage temp: rarity.color set value "§a§l"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:3}] run data modify storage temp: rarity.color set value "§9§l"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:4}] run data modify storage temp: rarity.color set value "§5§l"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:5}] run data modify storage temp: rarity.color set value "§6§l"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:6}] run data modify storage temp: rarity.color set value "§d§l"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:7}] run data modify storage temp: rarity.color set value "§b§l"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:8}] run data modify storage temp: rarity.color set value "§c§l"

# rarity
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:1}] run data modify storage temp: rarity.rarity set value "§f§lCOMMON"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:2}] run data modify storage temp: rarity.rarity set value "§a§lUNCOMMON"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:3}] run data modify storage temp: rarity.rarity set value "§9§lRARE"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:4}] run data modify storage temp: rarity.rarity set value "§5§lEPIC"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:5}] run data modify storage temp: rarity.rarity set value "§6§lLEGENDARY"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:6}] run data modify storage temp: rarity.rarity set value "§d§lMYTHIC"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:7}] run data modify storage temp: rarity.rarity set value "§b§lDIVINE"
 execute if items entity @s weapon.mainhand *[custom_data~{Rarity:8}] run data modify storage temp: rarity.rarity set value "§c§lSPECIAL"

# rarity
 execute if items entity @s weapon.mainhand *[custom_data~{WeaponType:bow}] run data modify storage temp: rarity.type set value " §lBOW"
 execute if items entity @s weapon.mainhand *[custom_data~{WeaponType:sword}] run data modify storage temp: rarity.type set value " §lSWORD"
 execute if items entity @s weapon.mainhand *[custom_data~{WeaponType:axe}] run data modify storage temp: rarity.type set value " §lAXE"
 execute if items entity @s weapon.mainhand *[custom_data~{WeaponType:helmet}] run data modify storage temp: rarity.type set value " §lHELMET"
 execute if items entity @s weapon.mainhand *[custom_data~{WeaponType:chestplate}] run data modify storage temp: rarity.type set value " §lCHESTPLATE"
 execute if items entity @s weapon.mainhand *[custom_data~{WeaponType:leggings}] run data modify storage temp: rarity.type set value " §lLEGGINGS"
 execute if items entity @s weapon.mainhand *[custom_data~{WeaponType:boots}] run data modify storage temp: rarity.type set value " §lBOOTS"
 execute unless data entity @s SelectedItem.components.minecraft:custom_data.WeaponType run data modify storage temp: rarity.type set value " "


# run
function system:item/lore/main/lore/rarity/macro with storage temp: rarity