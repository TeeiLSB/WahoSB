# main tick
execute as @a[scores={Item.Ability.Ragnacrock.CD=1..}] unless entity @s[tag=RagAxeCanceled] at @s run function system:ability/ability_tick/weapon/ragnarock/casting

# delete buff
execute as @a[scores={Item.Ability.Ragnacrock.Duration=1}] run function system:ability/ability_tick/weapon/ragnarock/delete_buff

# mage cd reduction
execute as @a[scores={Item.Ability.Ragnacrock.CD=300},tag=Dungeon.Class.Mage] run scoreboard players set @s Item.Ability.Ragnacrock.CD 1

# remove ragaxe cancel tag
execute as @a[scores={Item.Ability.Ragnacrock.CD=1}] run tag @s remove RagAxeCanceled

# remove score
execute as @a[scores={Item.Ability.Ragnacrock.CD=1..}] run scoreboard players remove @s Item.Ability.Ragnacrock.CD 1


# ragaxe duration
scoreboard players remove @a[scores={Item.Ability.Ragnacrock.Duration=1..}] Item.Ability.Ragnacrock.Duration 1
