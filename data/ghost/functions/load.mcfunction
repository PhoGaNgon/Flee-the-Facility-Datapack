tellraw @a {"text":"Ghost Prototype has loaded", "color":"#00fbff"}

scoreboard objectives add deathCount deathCount
scoreboard objectives add deathTimer dummy
scoreboard objectives add freezeTimer dummy
team add Hiders
team add Ghosts

function ghost:reset