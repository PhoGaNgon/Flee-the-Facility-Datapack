# Checks what event to execute after pressing the button
execute as @p[tag=frozen, distance=..3, gamemode=!spectator] run function cryochamber:freeprisoner
execute if entity @e[type=allay, tag=ghost, tag=leashed] at @e[type=skeleton, tag=cryochamber, tag=!locked, distance=..3, sort=nearest, limit=1] as @p[tag=leashed] run function cryochamber:imprison

