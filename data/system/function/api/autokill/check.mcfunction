execute if score @s Status.Health.b matches ..-1 run function system:api/autokill/execute
execute if score @s Status.Health.b matches 0 if score @s Status.Health.m matches ..-1 run function system:api/autokill/execute
execute if score @s Status.Health.b matches 0 if score @s Status.Health.m matches 0 if score @s Status.Health.k matches ..-1 run function system:api/autokill/execute
execute if score @s Status.Health.b matches 0 if score @s Status.Health.m matches 0 if score @s Status.Health.k matches 0 if score @s Status.Health.b matches ..0 run function system:api/autokill/execute