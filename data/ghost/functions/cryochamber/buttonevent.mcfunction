# Checks what event to execute after pressing the button
execute as @p[tag=frozen, distance=..3] run function ghost:cryochamber/freeprisoner
execute as @a[tag=ghost] if score @s ghost_sid = @e[type=allay, tag=ghost, tag=leashed, sort=nearest, limit=1] ghost_sid if entity @p[team=Hunter, distance=..4] if entity @e[type=skeleton, tag=cryochamber, tag=!locked, distance=..3] run function ghost:cryochamber/imprison
