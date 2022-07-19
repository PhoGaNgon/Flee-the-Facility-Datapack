# When using in a command block:
# Command block type: Repeat
# Position at the main block
# Check if entity @e[type=minecraft:armor_stand, name="QuickTime"]

# This is used to repeatedly trigger sound and block change
execute unless entity @e[type=armor_stand, name="QuickTimer", distance=..1] run summon armor_stand ~ ~ ~ {CustomName:'"QuickTimer"'}
scoreboard players add @e[type=armor_stand, name="QuickTimer", distance=..1] stationCounter 1

# This is used to time the total duration of the quicktime event
scoreboard players add @s stationCounter 1

execute if score @s stationCounter matches 1 run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[type=armor_stand, name="QuickTimer", scores={stationCounter=3..}, distance=..1, limit=1] run playsound minecraft:block.note_block.chime master @a[distance=..4.5, team=Hiders] ~ ~ ~ 1 .75
execute as @e[type=armor_stand, name="QuickTimer", scores={stationCounter=3..}, distance=..1, limit=1] if block ~ ~ ~ redstone_lamp[lit=false] run tag @s add turnOn
execute as @e[type=armor_stand, name="QuickTimer", scores={stationCounter=3..}, distance=..1, limit=1, tag=turnOn] run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[type=armor_stand, name="QuickTimer", scores={stationCounter=3..}, distance=..1, limit=1, tag=!turnOn] run setblock ~ ~ ~ redstone_lamp[lit=false]
execute as @e[type=armor_stand, name="QuickTimer", scores={stationCounter=3..}, distance=..1, limit=1] run tag @s remove turnOn
execute as @e[type=armor_stand, name="QuickTimer", scores={stationCounter=3..}, distance=..1, limit=1] run scoreboard players set @s stationCounter 0

execute if score @s stationCounter matches 47 run function hacking:failure
execute if score @s stationCounter matches 47 run kill @e[type=armor_stand, name="QuickTimer", distance=..1]
execute if score @s stationCounter matches 47 run kill @s

title @a[distance=..4.5] times 0 10 0
execute if entity @e[type=armor_stand, name="HackSuccessCounter", distance=..1, scores={stationCounter=15}] run title @a[distance=..4.5] title [{"text":"____","color":"red"},{"text":"_","color":"green"},{"text":"_","color":"red"}]
execute if entity @e[type=armor_stand, name="HackSuccessCounter", distance=..1, scores={stationCounter=30}] run title @a[distance=..4.5] title [{"text":"__","color":"red"},{"text":"_","color":"green"},{"text":"___","color":"red"}]
execute if entity @e[type=armor_stand, name="HackSuccessCounter", distance=..1, scores={stationCounter=45}] run title @a[distance=..4.5] title [{"text":"___","color":"red"},{"text":"_","color":"green"},{"text":"__","color":"red"}]
execute if entity @e[type=armor_stand, name="HackSuccessCounter", distance=..1, scores={stationCounter=60}] run title @a[distance=..4.5] title [{"text":"_","color":"red"},{"text":"_","color":"green"},{"text":"____","color":"red"}]
execute if entity @e[type=armor_stand, name="HackSuccessCounter", distance=..1, scores={stationCounter=75}] run title @a[distance=..4.5] title [{"text":"__","color":"red"},{"text":"_","color":"green"},{"text":"___","color":"red"}]
execute if entity @e[type=armor_stand, name="HackSuccessCounter", distance=..1, scores={stationCounter=90}] run title @a[distance=..4.5] title [{"text":"_____","color":"red"},{"text":"_","color":"green"},{"text":"","color":"red"}]

execute if score @s stationCounter matches ..11 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 12 run title @a[distance=..4.5] subtitle [{"text":"▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 13 run title @a[distance=..4.5] subtitle [{"text":"▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 14 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 15 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 16 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 17 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 18 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 19 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]                               
execute if score @s stationCounter matches 20 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 21 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 22 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 23 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 24 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 25 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 26 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 27 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 28 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 29 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 30 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 31 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 32 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 33 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 34 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 35 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 36 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 37 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 38 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 39 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 40 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 41 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 42 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏","color":"red"}]
execute if score @s stationCounter matches 43 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏","color":"red"}]
execute if score @s stationCounter matches 44 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏","color":"red"}]
execute if score @s stationCounter matches 45 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏","color":"red"}]
execute if score @s stationCounter matches 46 run title @a[distance=..4.5] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"}]
