tellraw @a {"text": "Hacking is loaded", "color": "blue"}

scoreboard objectives add stationCounter dummy
scoreboard objectives add StationsHacked dummy
scoreboard players set count StationsHacked 0

# Command block setup Top to bottom
#execute positioned ~ ~1 ~ run function hacking:checkevent
#execute positioned ~ ~2 ~ if entity @e[type=minecraft:armor_stand, name="QuickTime", distance=..1] as @e[type=minecraft:armor_stand, name="QuickTime", distance=..1] run function hacking:quicktime
#execute positioned ~ ~3 ~ if entity @p[distance=..4] if entity @e[type=armor_stand, name="HackSuccessCounter", distance=..1] as @e[type=minecraft:armor_stand, name="HackSuccessCounter", distance=..1] run function hacking:displayprogress
