execute if block 73 225 73 glass run setblock 73 225 73 coal_block
setblock 73 224 73 gray_wool
execute if block 73 225 73 gray_carpet run setblock 73 225 73 air

# ① 本体 → Temp
clone 65 224 70 81 226 76 65 224 174

# ② Tempの1列目～16列目 → 本体の2列目～
clone 65 224 174 80 226 180 66 224 70

# ③ Tempの最後の列 → 本体の最初
clone 81 224 174 81 226 180 65 224 70


execute if block 73 225 73 coal_block run setblock 73 225 73 glass


setblock 73 224 73 black_stained_glass
execute if score $CrystalCount F7.Gimmick.Status matches 2 run setblock 73 224 73 red_stained_glass

execute if block 73 225 73 air run setblock 73 225 73 gray_carpet