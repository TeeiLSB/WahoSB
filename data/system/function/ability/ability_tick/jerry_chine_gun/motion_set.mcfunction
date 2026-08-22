item replace entity @s saddle with glass[item_model="custom/misc/nothing",custom_data={motion_item:true},equippable={slot:saddle,equip_sound:"intentionally_empty"}]


scoreboard players set #600 Constant 600
execute store result score #Ymotion Temporary run data get entity @s Motion[1] 1000


scoreboard players operation #Ymotion Temporary *= #-1 Constant
scoreboard players operation #Ymotion Temporary += #600 Constant

# 6. 0だとenchantできないから最低でも1にする
execute if score #Ymotion Temporary matches ..0 run scoreboard players set #Ymotion Temporary 10

#title @s actionbar {"score":{"name":"#Ymotion","objective":"Temporary"}}
execute store result storage motion: vec.y int 0.1 run scoreboard players get #Ymotion Temporary




# --- 定数の準備（ロード時などに1回実行） ---
scoreboard players set #446 Constant 446
scoreboard players set #223 Constant 223

# --- メイン計算処理 ---
# 1. 視点角度(Rotation[1])を取得（小数点以下を保つため100倍して取得: -9000 ~ 9000）
execute store result score #calc Temporary run data get entity @s Rotation[1] 100

# 2. 角度の絶対値をとる（真上でも真下でも 0 ~ 9000 の正の値にする）
execute if score #calc Temporary matches ..-1 run scoreboard players operation #calc Temporary *= #-1 Constant

# 3. 223/4500 (＝446/9000) を掛けて 0 ~ 446 に変換
# (オーバーフローを防ぐため、掛け算を先にしてから割ります)
scoreboard players operation #calc Temporary *= #223 Constant
scoreboard players operation #calc Temporary /= #45 Constant
scoreboard players operation #calc Temporary /= #100 Constant

# 4. 446 から引き算して反転（0度で446、90度で0）
scoreboard players operation #result Temporary = #446 Constant
scoreboard players operation #result Temporary -= #calc Temporary

# 5. 念のため範囲外（クランプ）対策：結果が0未満になったら0にする
execute if score #result Temporary matches ..-1 run scoreboard players set #result Temporary 0


execute store result score #Xmotion Temporary run data get entity @s Motion[0] 1000
execute store result score #Zmotion Temporary run data get entity @s Motion[2] 1000
execute if score #Xmotion Temporary matches ..-1 run scoreboard players operation #Xmotion Temporary *= #-1 Constant
execute if score #Zmotion Temporary matches ..-1 run scoreboard players operation #Zmotion Temporary *= #-1 Constant

scoreboard players operation #Xmotion Temporary += #Zmotion Temporary
scoreboard players operation #Xmotion Temporary /= #2 Constant
#title @s actionbar ["X: ",{"score":{"name":"#Xmotion","objective":"Temporary"}},"-= ",{"score":{"name":"#result","objective":"Temporary"}}]

#scoreboard players operation #result Temporary -= #Xmotion Temporary


# 6. 0だとenchantできないから最低でも1にする
execute if score #result Temporary matches ..0 run scoreboard players set #result Temporary 10


execute store result storage motion: vec.z int 0.1 run scoreboard players get #result Temporary

function system:ability/ability_tick/jerry_chine_gun/macro with storage motion: vec
data remove storage motion: vec

#function system:ability/ability_tick/jerry_chine_gun/get_back_motion

scoreboard players reset #Xmotion Temporary
scoreboard players reset #Ymotion Temporary
scoreboard players reset #Zmotion Temporary
scoreboard players reset #calc Temporary