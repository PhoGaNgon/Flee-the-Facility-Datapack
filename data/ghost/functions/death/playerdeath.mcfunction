# Occurs when a player dies
# Finds their respective allay and executes deathExplosion
scoreboard players operation .deathExplode ghost_sid = @s ghost_sid
tag @s add deathExplode
tag @s add dead
tag @s remove ghostLink

execute as @e[type=allay, tag=ghost] if score @s ghost_sid = .deathExplode ghost_sid at @s run function ghost:death/deathexplosion

gamemode spectator @s
scoreboard players set @s deathCount 0
tag @s remove deathExplode