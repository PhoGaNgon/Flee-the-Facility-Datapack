# Make the dead player spectate their allay
scoreboard players operation .spectate ghost_sid = @s ghost_sid
tag @s add spectateLink
execute as @e[type=allay, tag=ghost] if score @s ghost_sid = .spectate ghost_sid run spectate @s @p[tag=spectateLink]
tag @s remove spectateLink

# Ticks down the timer until dead player gets back up
scoreboard players add @s deathTimer 1
# Once timer finishes, revive player
execute if score @s deathTimer matches 500.. at @s run function ghost:revive/reviveplayer
# Display particles
execute at @s run particle dust_color_transition 0.25 0.65 1 1 1 1 1 ~ ~ ~ .2 .1 .2 1 2