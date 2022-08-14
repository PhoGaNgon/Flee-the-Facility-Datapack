# Command Block setup:
# Impulse command block at button, positioned wherever the player should be freed
# -- execute positioned ~ ~ ~-2 run function cryochamber:buttonevent
# Repeat command block resummoning cryochamber skeleton
# -- execute positioned ~ ~0.5 ~-2 unless entity @e[type=skeleton, tag=cryochamber, distance=..1] run summon skeleton ~ ~ ~ {NoAI:1, Tags:["cryochamber"], Team:Hiders, Invulnerable:1, Silent:1, ActiveEffects:[{Id:14, Duration:999999, ShowParticles:0b}]}

execute as @a[tag=frozen] at @s run function ghost:cryochamber/freezefrozenplayer

# Leash behavior
execute as @e[type=allay, tag=ghost, tag=!leashed] if data entity @s Leash run tag @s add leashed
execute as @e[type=allay, tag=ghost, tag=leashed] run data merge entity @s {NoAI:0}
execute as @e[type=allay, tag=ghost, tag=leashed] unless data entity @s Leash run tag @s remove leashed
execute as @e[type=allay, tag=ghost, tag=!leashed] run data merge entity @s {NoAI:1}

# Execute when an allay is leashed
execute as @e[type=allay, tag=ghost, tag=leashed] run function ghost:cryochamber/highlightcryochamber
