# Checks what event to execute after pressing the button
execute as @p[tag=frozen, distance=..3] run function cryochamber:freeprisoner
execute as @a[tag=dead] if score @s ghost_sid = @e[type=allay, tag=ghost, tag=leashed, sort=nearest, limit=1] ghost_sid if entity @p[team=Hunter, distance=..4] at @e[type=skeleton, tag=cryochamber, tag=!locked, sort=nearest, limit=1] run function cryochamber:imprison
