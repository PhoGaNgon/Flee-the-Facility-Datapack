# Scoreboard setup
scoreboard objectives remove ghost_sid
scoreboard objectives add ghost_sid dummy
scoreboard objectives add deathCount deathCount
scoreboard objectives add deathTimer dummy
scoreboard objectives add freezeTimer dummy
# Reset scores
scoreboard players set @a deathTimer 0
scoreboard players set @a freezeTimer 0
scoreboard players set @a deathCount 0
# Reset tags
tag @a remove init
tag @a remove ghostLink
tag @a remove ghost
tag @a remove dead
tag @a remove frozen
tag @a[team=Hiders] add init
tag @a[team=Hiders] add ghostLink

# Kill any existing allays
kill @e[type=allay, tag=ghost]

function ghost:cryochamber/resetcryochambers