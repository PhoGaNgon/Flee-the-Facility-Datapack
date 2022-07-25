# Scoreboard setup
scoreboard objectives remove ghost_sid
scoreboard objectives add ghost_sid dummy
scoreboard objectives add deathCount deathCount
scoreboard objectives add deathTimer dummy
# Reset tags
tag @a remove init
tag @a remove dead
tag @a remove ghostLink
tag @a[team=Hiders] add init
tag @a[team=Hiders] add ghostLink

# Kill any existing allays
kill @e[type=allay, tag=ghost]