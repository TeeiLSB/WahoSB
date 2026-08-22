advancement revoke @s only system:ability/right_click/infinileap


execute if score @s CD.default matches 0 run dialog show @s[tag=Dungeon.Class.Archer] system:leap/archer
execute if score @s CD.default matches 0 run dialog show @s[tag=Dungeon.Class.Berserk] system:leap/berserk
execute if score @s CD.default matches 0 run dialog show @s[tag=Dungeon.Class.Mage] system:leap/mage
execute if score @s CD.default matches 0 run dialog show @s[tag=Dungeon.Class.Healer] system:leap/healer
execute if score @s CD.default matches 0 run dialog show @s[tag=Dungeon.Class.Tank] system:leap/tank

execute if score @s CD.default matches 0 run scoreboard players set @s CD.default 10
