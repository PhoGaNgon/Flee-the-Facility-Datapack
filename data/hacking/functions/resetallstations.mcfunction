execute as @e[type=armor_stand, tag=StationCounter] at @s run setblock ~ ~ ~ black_concrete
kill @e[type=armor_stand, team=Stations]
scoreboard players set count StationsHacked 0