
execute as @a[tag=frozen] at @s run function cryochamber:freezefrozenplayer

# Leash behavior
execute as @e[type=allay, tag=ghost, tag=!leashed] if data entity @s Leash run tag @s add leashed
execute as @e[type=allay, tag=ghost, tag=leashed] run data merge entity @s {NoAI:0}
execute as @e[type=allay, tag=ghost, tag=leashed] unless data entity @s Leash run tag @s remove leashed
execute as @e[type=allay, tag=ghost, tag=!leashed] run data merge entity @s {NoAI:1}
execute as @e[type=allay, tag=ghost, tag=leashed] at @s run tp @s ~ ~ ~ facing entity @p[team=Hunter]
execute as @e[type=allay, tag=ghost, tag=leashed] at @s run tag @p[team=Hiders, distance=..0.1] add leashed

# Execute when an allay is leashed
execute if entity @e[type=allay, tag=ghost, tag=leashed] run function cryochamber:lookathunter



