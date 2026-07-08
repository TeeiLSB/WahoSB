# motion用marker
execute in overworld run summon marker 0.0 0.0 0.0 {UUID:[I; 2106,5308417,0,0]}

scoreboard objectives add Temporary dummy
scoreboard objectives add Constant dummy

# Constant
function teil:const


# 0,0付近を常にロードする
execute in overworld run forceload add -16 -16 16 16
forceload add -16 -16 16 16

# 汎用シュルカーボックス
setblock 0 0 0 black_shulker_box


# score
 scoreboard objectives add CD.default dummy
 scoreboard players set @a CD.default 1
 scoreboard objectives add CD.hyperion dummy
 scoreboard players set @a CD.hyperion 1
 scoreboard objectives add ray_steps dummy
 scoreboard objectives add ray_success dummy
 scoreboard objectives add shelmet dummy


# reload確認
say Reloaded!