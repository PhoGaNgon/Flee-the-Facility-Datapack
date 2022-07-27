# Freezes the frozen player in place within the cryochamber
execute at @e[type=skeleton, tag=cryochamber, distance=..3, limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~

execute unless entity @p[team=Hunter, distance=..6] run scoreboard players add @s freezeTimer 1

execute if score @s freezeTimer matches 1200.. at @s run function cryochamber:killfrozenplayer
