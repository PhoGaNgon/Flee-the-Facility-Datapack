# Make the dead player spectate their allay
scoreboard players operation .spectate sid = @s sid
tag @s add spectateLink
execute as @e[type=allay, tag=ghost] if score @s sid = .spectate sid run spectate @s @p[tag=spectateLink]
tag @s remove spectateLink

# Ticks down the timer until dead player gets back up
scoreboard players add @s deathTimer 1
# Once timer finishes, revive player
execute if score @s deathTimer matches 500.. run gamemode adventure @s
execute if score @s deathTimer matches 500.. run tag @s remove dead
execute if score @s deathTimer matches 500.. run tag @s add ghostLink
execute if score @s deathTimer matches 500.. at @s run effect give @e[type=allay, tag=ghost, distance=..1, sort=nearest, limit=1] invisibility 999999 1 true
execute if score @s deathTimer matches 500.. run scoreboard players set @s deathTimer 0