setblock ~ ~ ~ black_concrete
summon minecraft:armor_stand ~ ~ ~ {Tags:["HackSuccessCounter"], Team:Stations, NoGravity:1, Invisible:1, Invulnerable:1}
summon minecraft:armor_stand ~ ~ ~ {Tags:["StationCounter"], Team:Stations, NoGravity:1, Invisible:1, Invulnerable:1}
scoreboard players set @e[type=minecraft:armor_stand, tag=HackSuccessCounter, distance=..1] StationCounter 15