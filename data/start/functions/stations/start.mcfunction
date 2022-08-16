function hacking:resetallstations
summon minecraft:armor_stand 1437 26 1798 {Tags:["StationRandomizer", "Station1_1", "Region1"], Invisible:1, Invulnerable:1, NoGravity:1}
summon minecraft:armor_stand 1388 26 1846 {Tags:["StationRandomizer", "Station1_2", "Region1"], Invisible:1, Invulnerable:1, NoGravity:1}
summon minecraft:armor_stand 1428 26 1914 {Tags:["StationRandomizer", "Station2_1", "Region2"], Invisible:1, Invulnerable:1, NoGravity:1}
summon minecraft:armor_stand 1383 26 1930 {Tags:["StationRandomizer", "Station2_2", "Region2"], Invisible:1, Invulnerable:1, NoGravity:1}
summon minecraft:armor_stand 1358 27 1865 {Tags:["StationRandomizer", "Station3_1", "Region3"], Invisible:1, Invulnerable:1, NoGravity:1}
summon minecraft:armor_stand 1358 34 1865 {Tags:["StationRandomizer", "Station3_2", "Region3"], Invisible:1, Invulnerable:1, NoGravity:1}
summon minecraft:armor_stand 1315 26 1811 {Tags:["StationRandomizer", "Station4_1", "Region4"], Invisible:1, Invulnerable:1, NoGravity:1}
summon minecraft:armor_stand 1309 32 1843 {Tags:["StationRandomizer", "Station4_2", "Region4"], Invisible:1, Invulnerable:1, NoGravity:1}
summon minecraft:armor_stand 1316 26 1872 {Tags:["StationRandomizer", "Station5_1", "Region5"], Invisible:1, Invulnerable:1, NoGravity:1}
summon minecraft:armor_stand 1326 26 1923 {Tags:["StationRandomizer", "Station5_2", "Region5"], Invisible:1, Invulnerable:1, NoGravity:1}
execute as @e[type=minecraft:armor_stand, tag=StationRandomizer] at @s run setblock ~ ~ ~ minecraft:black_concrete
tag @e[type=minecraft:armor_stand, tag=Region1, sort=random, limit=1] add active
tag @e[type=minecraft:armor_stand, tag=Region2, sort=random, limit=1] add active
tag @e[type=minecraft:armor_stand, tag=Region3, sort=random, limit=1] add active
tag @e[type=minecraft:armor_stand, tag=Region4, sort=random, limit=1] add active
tag @e[type=minecraft:armor_stand, tag=Region5, sort=random, limit=1] add active
tag @e[type=armor_stand, tag=StationRandomizer, tag=!active] add active
execute as @e[type=minecraft:armor_stand, tag=StationRandomizer, tag=active] at @s run setblock ~ ~ ~ minecraft:red_glazed_terracotta
kill @e[type=minecraft:armor_stand, tag=StationRandomizer]