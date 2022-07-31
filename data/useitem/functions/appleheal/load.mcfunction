scoreboard objectives add healTime dummy
scoreboard objectives add Health health
scoreboard players set @a healTime 0
tag @a remove healer
tag @a remove healed
tag @a remove onHealCooldown
tag @a remove healCanceled
execute as @a run attribute @s generic.movement_speed base set 0.10000000149011612