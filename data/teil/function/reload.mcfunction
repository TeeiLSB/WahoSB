# motion用marker
execute in overworld run summon marker 0.0 0.0 0.0 {UUID:[I; 2106,5308417,0,0]}

scoreboard objectives add Temporary dummy
scoreboard objectives add Constant dummy

# Constant
function teil:const

effect give @a weakness infinite 255 true
effect give @a saturation infinite 255 true


# 0,0付近を常にロードする
execute in overworld run forceload add -16 -16 16 16
forceload add -16 -16 16 16

# 汎用シュルカーボックス
setblock 0 0 0 black_shulker_box

# every player reload
 execute as @a at @s run function system:core/player/reload

# score
 scoreboard objectives add CD.default dummy
 scoreboard players set @a CD.default 1
 scoreboard objectives add CD.hyperion dummy
 scoreboard players set @a CD.hyperion 1
 scoreboard objectives add ray_steps dummy
 scoreboard objectives add ray_success dummy
 scoreboard objectives add shelmet dummy
 scoreboard objectives add Ferocity_Damage dummy
 scoreboard objectives add Ferocity_CD dummy
 scoreboard objectives add Ferocity_Remain dummy
 scoreboard objectives add Status.Ferocity dummy
 scoreboard objectives add Status.ArrowDamage dummy
 scoreboard objectives add Dungeon.Class.Mage.BeamRange dummy
 scoreboard objectives add Status.MageBeamDamage dummy
 scoreboard objectives add Status.AttackSpeed dummy
 scoreboard objectives add Player.AttackCooldown dummy
 scoreboard objectives add Tick dummy
 scoreboard objectives add Status.MeleeDamage dummy
# reload確認
say Reloaded!