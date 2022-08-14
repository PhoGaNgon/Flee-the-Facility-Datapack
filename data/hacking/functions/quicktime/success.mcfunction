
setblock ~ ~ ~ minecraft:black_concrete
playsound minecraft:block.note_block.bell master @a[distance=..4, team=Hiders]
scoreboard players add @e[type=armor_stand, tag=HackSuccessCounter, distance=..1] StationCounter 15
execute if score @e[type=armor_stand, tag=HackSuccessCounter, distance=..1, limit=1] StationCounter matches 105 run function hacking:finish