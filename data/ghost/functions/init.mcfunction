# Creates allays for each player and assigns them a unique ghost_sid identifier

# Create sign with a player's name on it
setblock ~ ~ ~ minecraft:oak_sign replace
data modify block ~ ~ ~ Text1 set value '{"selector":"@p[tag=init]"}'

# Summon and assign an allay that player's name
summon allay ~ ~ ~ {Tags:["init","ghost"], CustomNameVisible:1, NoAI:1, Invulnerable:1, Silent:1, Team:Ghosts, ActiveEffects:[{Id:14, Duration:999999, ShowParticles:0b}]}
data modify entity @e[type=allay, tag=init, sort=nearest, limit=1] CustomName set from block ~ ~ ~ Text1

# Update the global ghost_sid and assign to entities
scoreboard players add .global ghost_sid 1
scoreboard players operation @p[tag=init] ghost_sid = .global ghost_sid
scoreboard players operation @e[type=allay, tag=init, sort=nearest, limit=1] ghost_sid = .global ghost_sid

# Remove init tag from allay and player
tag @e[type=allay, tag=init, sort=nearest, limit=1] remove init
tag @s remove init