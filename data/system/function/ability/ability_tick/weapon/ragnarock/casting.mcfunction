
execute if score @s Item.Ability.Ragnacrock.CD matches 400 run playsound ui.button.click master @s ~ ~ ~ 0.7 2
execute if score @s Item.Ability.Ragnacrock.CD matches 400 run title @s actionbar "§aCASTING IN 3s"
execute if score @s Item.Ability.Ragnacrock.CD matches 380 run playsound ui.button.click master @s ~ ~ ~ 0.7 2
execute if score @s Item.Ability.Ragnacrock.CD matches 380 run title @s actionbar "§aCASTING IN 2s"
execute if score @s Item.Ability.Ragnacrock.CD matches 360 run playsound ui.button.click master @s ~ ~ ~ 0.7 2
execute if score @s Item.Ability.Ragnacrock.CD matches 360 run title @s actionbar "§aCASTING IN 1s"
execute if score @s Item.Ability.Ragnacrock.CD matches 340 run function system:ability/sword/nether/ragnarock/buff
execute if score @s Item.Ability.Ragnacrock.CD matches 340 run title @s actionbar "§aCASTING"


execute if score @s Item.Ability.Ragnacrock.CD matches 340.. unless items entity @s weapon.mainhand *[custom_model_data={strings:[ragnarock_axe]}] run tag @s add RagAxeCanceled
execute if score @s Item.Ability.Ragnacrock.CD matches 340.. unless items entity @s weapon.mainhand *[custom_model_data={strings:[ragnarock_axe]}] run title @s actionbar "§cCANCELED"
