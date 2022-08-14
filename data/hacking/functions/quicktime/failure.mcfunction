setblock ~ ~ ~ black_concrete

scoreboard players remove @e[type=armor_stand, tag=StationCounter, distance=..1] StationCounter 10
playsound minecraft:item.goat_horn.sound.5 master @a ~ ~ ~ 1000
summon minecraft:shulker ~ ~-1 ~ {Team:Stations, NoAI:1, Health:30, Silent:1, ActiveEffects:[{Id:24,Duration:290,ShowParticles:0b},{Id:14,Duration:10000,ShowParticles:0b}]}