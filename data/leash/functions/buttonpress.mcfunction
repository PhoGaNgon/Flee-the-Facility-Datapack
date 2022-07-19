tag @e[type=skeleton, distance=..3, tag=highlighter, tag=debounce] remove debounce
execute if entity @p[tag=frozen, distance=..3] run function leash:freeprisoner
execute as @e[type=skeleton, tag=highlighter, tag=!debounce, tag=!locked, sort=nearest, distance=..2, limit=1] at @s if entity @p[team=Hunter, distance=..4] if entity @e[type=allay, tag=leashed] run function leash:imprison
