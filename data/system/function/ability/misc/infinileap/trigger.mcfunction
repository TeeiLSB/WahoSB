advancement revoke @s only system:ability/right_click/infinileap


execute if score @s CD.default matches 0 run dialog show @s system:leap_menu
execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 5
