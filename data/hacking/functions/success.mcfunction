
setblock ~ ~ ~ minecraft:black_concrete
playsound minecraft:block.note_block.bell master @a[distance=..4.5, team=Hiders]
scoreboard players add @e[type=armor_stand, name="HackSuccessCounter", distance=..1] stationCounter 15
execute if score @e[type=armor_stand, name="HackSuccessCounter", distance=..1, limit=1] stationCounter matches 105 run function hacking:finish