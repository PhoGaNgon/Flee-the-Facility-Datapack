# Occurs when a player dies
# Finds their respective allay and executes deathExplosion
scoreboard players operation .deathExplode ghost_sid = @s ghost_sid
tag @s add deathExplode
tag @s remove ghostLink

execute as @e[type=allay, tag=ghost] if score @s ghost_sid = .deathExplode ghost_sid at @s run function ghost:death/deathexplosion

scoreboard players set @s deathCount 0

schedule function ghost:death/teleporttoallay 10t