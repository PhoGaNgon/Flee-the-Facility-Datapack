summon minecraft:armor_stand 1333 25 1799 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1297 25 1843 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1348 25 1819 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1309 25 1887 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1325 25 1893 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1317 25 1936 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1344 25 1876 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1357 26 1880 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1369 26 1862 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1375 25 1909 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1388 25 1819 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1422 25 1848 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1365 25 1838 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1397 25 1870 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1426 24.5 18842 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1418 25 1936 {Tags:["SpawnSpot"]}
summon minecraft:armor_stand 1399 25 1905 {Tags:["SpawnSpot"]}

execute as @a[team=Hiders] run function start:spawn/markspawns

execute as @e[type=armor_stand, tag=SpawnSpot, tag=marked] at @s run function start:spawn/teleportplayer
schedule function start:spawn/spawnparticles 1t

gamemode adventure @a[team=Hiders]

kill @e[type=armor_stand, tag=SpawnSpot]
