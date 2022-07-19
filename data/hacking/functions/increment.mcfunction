# When using this function inside a command block:
# Command block type: Impulse
# Position it to the main block
execute unless entity @e[type=armor_stand, distance=..1, name="HackSuccessCounter"] positioned ~ ~ ~ run function hacking:resetstation

execute if block ~ ~ ~ emerald_block unless entity @e[type=armor_stand, name="StationCounter", distance=..1] run setblock ~ ~ ~ black_concrete
execute if block ~ ~ ~ black_concrete run scoreboard players add @e[type=minecraft:armor_stand, name="StationCounter", team=stations, distance=..1] stationCounter 1
execute if score @e[type=armor_stand, name="StationCounter", distance=..1, limit=1] stationCounter matches ..90 if score @e[type=armor_stand, name="StationCounter", distance=..1, limit=1] stationCounter = @e[type=armor_stand, name="HackSuccessCounter", distance=..1, limit=1] stationCounter unless entity @e[type=armor_stand, name="QuickTime", distance=..1] run summon armor_stand ~ ~ ~ {CustomName:'"QuickTime"'}
