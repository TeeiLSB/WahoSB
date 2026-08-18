item replace entity @s saddle with glass[item_model="custom/misc/nothing",custom_data={motion_item:true},equippable={slot:saddle,equip_sound:"intentionally_empty"}]


scoreboard players set #600 Constant 600
execute store result score #Ymotion Temporary run data get entity @s Motion[1] 1000
scoreboard players operation #Ymotion Temporary *= #-1 Constant
scoreboard players operation #Ymotion Temporary += #600 Constant

execute store result storage motion: vec.y int 0.1 run scoreboard players get #Ymotion Temporary
#title @s actionbar {"score":{"name":"#Ymotion","objective":"Temporary"}}


# chinegunをplayerにrotateさせる
tag @s add This
execute as @n[type=item_display,tag=Item.Jerry_Chine_Gun] at @s run rotate @s facing entity @p[tag=This]
tag @s remove This


# --- 定数の準備（ロード時などに1回実行） ---
scoreboard players set #446 Constant 446
scoreboard players set #223 Constant 223
scoreboard players set #45 Constant 45
scoreboard players set #-1 Constant -1

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

scoreboard players operation #speed Temporary = @s WalkSpeed
scoreboard players operation #speed Temporary /= #3 Constant
scoreboard players operation #speed Temporary < #446 Constant

scoreboard players operation #result Temporary -= @s WalkSpeed


# 6. 0だとenchantできないから最低でも1にする
execute if score #result Temporary matches ..0 run scoreboard players set #result Temporary 10

title @s actionbar {"score":{"name":"#result","objective":"Temporary"}}

execute store result storage motion: vec.z int 0.1 run scoreboard players get #result Temporary

function system:ability/ability_tick/jerry_chine_gun/macro with storage motion: vec
data remove storage motion: vec
scoreboard players reset #Ymotion Temporary
scoreboard players reset #calc Temporary
scoreboard players reset #speed Temporary