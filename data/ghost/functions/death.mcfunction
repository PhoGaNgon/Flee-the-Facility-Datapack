# Occurs when a player dies
# Finds their respective allay and executes deathExplosion
scoreboard players operation .deathExplode sid = @s sid
tag @s add dead
tag @s remove ghostLink

execute as @e[type=allay, tag=ghost] if score @s sid = .deathExplode sid at @s run function ghost:deathexplosion

gamemode spectator @s
scoreboard players set @s deathCount 0
tag @s remove deathExplode