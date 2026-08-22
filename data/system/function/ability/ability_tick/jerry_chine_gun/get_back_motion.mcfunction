scoreboard objectives add Temporary dummy
scoreboard objectives add Constant dummy

scoreboard players set #1000 Constant 1000

# デバッグ用マーカーの召喚（すでに召喚済みの場合は不要）
execute unless entity 742c08c4-b8e9-4ec1-9dc5-555bfed3aeaf run summon marker 0 0 0 {UUID:[I;1949042884,-1192669503,-1648011941,-19681617]}

# =========================================================
# 1. プレイヤーの Motion (X, Z) を取得 (1000倍)
# =========================================================
execute store result score #vx Temporary run data get entity @s Motion[0] 1000
execute store result score #vz Temporary run data get entity @s Motion[2] 1000


# =========================================================
# 2. プレイヤーの「視線角度(rotated as)」を反映してマーカーを配置
# =========================================================
# 【重要】rotated as @s を付けることで、マーカーにプレイヤーの Yaw を確実にコピーする
execute rotated as @s run tp 742c08c4-b8e9-4ec1-9dc5-555bfed3aeaf 100 100 100 ~ 0

# マーカーを視線ローカルの真後ろ (^ ^ ^-1) に移動
execute rotated as @s as 742c08c4-b8e9-4ec1-9dc5-555bfed3aeaf at @s run tp @s ^ ^ ^-1

# 差分から真後ろベクトル (Bx, Bz) を抽出
execute store result score #bx Temporary run data get entity 742c08c4-b8e9-4ec1-9dc5-555bfed3aeaf Pos[0] 1000
execute store result score #bz Temporary run data get entity 742c08c4-b8e9-4ec1-9dc5-555bfed3aeaf Pos[2] 1000

scoreboard players set #offset Constant 100000
scoreboard players operation #bx Temporary -= #offset Constant
scoreboard players operation #bz Temporary -= #offset Constant


# =========================================================
# 3. 内積計算
# =========================================================
scoreboard players operation #vx Temporary *= #bx Temporary
scoreboard players operation #vz Temporary *= #bz Temporary

scoreboard players operation #v_back Temporary = #vx Temporary
scoreboard players operation #v_back Temporary += #vz Temporary
scoreboard players operation #v_back Temporary /= #1000 Constant


# =========================================================
# 4. アクションバー表示
# =========================================================
title @s actionbar ["後ろ速度: ",{"score":{"name":"#v_back","objective":"Temporary"}}]