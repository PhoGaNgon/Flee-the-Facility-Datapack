# When using in a command block:
# Command block type: Repeat
# Position at the main block
# Check if entity @e[type=minecraft:armor_stand, tag="QuickTime"]

# This is used to repeatedly trigger sound and block change
execute unless entity @e[type=armor_stand, tag=QuickTimer, distance=..1] run summon armor_stand ~ ~ ~ {Tags:["QuickTimer"], NoGravity:1, Invisible:1, Invulnerable:1}
scoreboard players add @e[type=armor_stand, tag=QuickTimer, distance=..1] StationCounter 1

# This is used to time the total duration of the quicktime event
scoreboard players add @s StationCounter 1

execute if score @s StationCounter matches 1 run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[type=armor_stand, tag=QuickTimer, scores={StationCounter=3..}, distance=..1, limit=1] run playsound minecraft:block.note_block.chime master @a[distance=..4, team=Hiders] ~ ~ ~ 1 .75
execute as @e[type=armor_stand, tag=QuickTimer, scores={StationCounter=3..}, distance=..1, limit=1] if block ~ ~ ~ redstone_lamp[lit=false] run tag @s add turnOn
execute as @e[type=armor_stand, tag=QuickTimer, scores={StationCounter=3..}, distance=..1, limit=1, tag=turnOn] run setblock ~ ~ ~ redstone_lamp[lit=true]
execute as @e[type=armor_stand, tag=QuickTimer, scores={StationCounter=3..}, distance=..1, limit=1, tag=!turnOn] run setblock ~ ~ ~ redstone_lamp[lit=false]
execute as @e[type=armor_stand, tag=QuickTimer, scores={StationCounter=3..}, distance=..1, limit=1] run tag @s remove turnOn
execute as @e[type=armor_stand, tag=QuickTimer, scores={StationCounter=3..}, distance=..1, limit=1] run scoreboard players set @s StationCounter 0

title @a[distance=..4] times 0 10 0
execute if entity @e[type=armor_stand, tag=HackSuccessCounter, distance=..1, scores={StationCounter=15}] run title @a[distance=..4] title [{"text":"____","color":"red"},{"text":"_","color":"green"},{"text":"_","color":"red"}]
execute if entity @e[type=armor_stand, tag=HackSuccessCounter, distance=..1, scores={StationCounter=30}] run title @a[distance=..4] title [{"text":"__","color":"red"},{"text":"_","color":"green"},{"text":"___","color":"red"}]
execute if entity @e[type=armor_stand, tag=HackSuccessCounter, distance=..1, scores={StationCounter=45}] run title @a[distance=..4] title [{"text":"___","color":"red"},{"text":"_","color":"green"},{"text":"__","color":"red"}]
execute if entity @e[type=armor_stand, tag=HackSuccessCounter, distance=..1, scores={StationCounter=60}] run title @a[distance=..4] title [{"text":"_","color":"red"},{"text":"_","color":"green"},{"text":"____","color":"red"}]
execute if entity @e[type=armor_stand, tag=HackSuccessCounter, distance=..1, scores={StationCounter=75}] run title @a[distance=..4] title [{"text":"__","color":"red"},{"text":"_","color":"green"},{"text":"___","color":"red"}]
execute if entity @e[type=armor_stand, tag=HackSuccessCounter, distance=..1, scores={StationCounter=90}] run title @a[distance=..4] title [{"text":"_____","color":"red"},{"text":"_","color":"green"},{"text":"","color":"red"}]

execute if score @s StationCounter matches ..11 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 12 run title @a[distance=..4] subtitle [{"text":"▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 13 run title @a[distance=..4] subtitle [{"text":"▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 14 run title @a[distance=..4] subtitle [{"text":"▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 15 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 16 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 17 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 18 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 19 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]                               
execute if score @s StationCounter matches 20 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 21 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 22 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 23 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 24 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 25 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 26 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 27 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 28 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 29 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 30 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 31 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 32 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 33 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 34 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 35 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 36 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 37 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 38 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 39 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 40 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 41 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 42 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏▏","color":"red"}]
execute if score @s StationCounter matches 43 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏▏","color":"red"}]
execute if score @s StationCounter matches 44 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏▏","color":"red"}]
execute if score @s StationCounter matches 45 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"},{"text":"▏","color":"red"}]
execute if score @s StationCounter matches 46 run title @a[distance=..4] subtitle [{"text":"▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏▏","color":"red"},{"text":"▏","color":"yellow"}]

execute if score @s StationCounter matches 46 run function hacking:quicktime/failure
execute if score @s StationCounter matches 46 run kill @e[type=armor_stand, tag=QuickTimer, distance=..1]
execute if score @s StationCounter matches 46 run kill @s
