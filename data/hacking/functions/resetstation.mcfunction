summon minecraft:armor_stand ~ ~ ~ {CustomName:'"HackSuccessCounter"', Team:stations}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'"StationCounter"', Team:stations}
scoreboard players set @e[type=minecraft:armor_stand, name="HackSuccessCounter", team=stations, distance=..1] stationCounter 15