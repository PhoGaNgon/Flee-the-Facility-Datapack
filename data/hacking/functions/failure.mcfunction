setblock ~ ~ ~ black_concrete

scoreboard players remove @e[type=armor_stand, name="StationCounter", distance=..1] stationCounter 10
execute as @a run playsound minecraft:item.goat_horn.sound.5 master @s
summon minecraft:shulker ~ ~-1 ~ {Team:stations, NoAI:1, Health:30, Silent:1, ActiveEffects:[{Id:24,Duration:290,ShowParticles:0b},{Id:14,Duration:10000,ShowParticles:0b}]}