# When using in a command block:
# Command block type: Impulse
# Position it at the main block

execute if entity @e[type=armor_stand, tag=QuickTime, scores={StationCounter=35..40}, distance=..1] if entity @e[type=armor_stand, tag=HackSuccessCounter, scores={StationCounter=15}, distance=..1] run function hacking:quicktime/success
execute if entity @e[type=armor_stand, tag=QuickTime, scores={StationCounter=23..28}, distance=..1] if entity @e[type=armor_stand, tag=HackSuccessCounter, scores={StationCounter=30}, distance=..1] run function hacking:quicktime/success
execute if entity @e[type=armor_stand, tag=QuickTime, scores={StationCounter=29..34}, distance=..1] if entity @e[type=armor_stand, tag=HackSuccessCounter, scores={StationCounter=45}, distance=..1] run function hacking:quicktime/success
execute if entity @e[type=armor_stand, tag=QuickTime, scores={StationCounter=17..22}, distance=..1] if entity @e[type=armor_stand, tag=HackSuccessCounter, scores={StationCounter=60}, distance=..1] run function hacking:quicktime/success
execute if entity @e[type=armor_stand, tag=QuickTime, scores={StationCounter=23..28}, distance=..1] if entity @e[type=armor_stand, tag=HackSuccessCounter, scores={StationCounter=75}, distance=..1] run function hacking:quicktime/success
execute if entity @e[type=armor_stand, tag=QuickTime, scores={StationCounter=41..46}, distance=..1] if entity @e[type=armor_stand, tag=HackSuccessCounter, scores={StationCounter=90}, distance=..1] run function hacking:quicktime/success
execute unless block ~ ~ ~ black_concrete unless block ~ ~ ~ emerald_block run function hacking:quicktime/failure


kill @e[type=armor_stand, tag=QuickTime, distance=..1]
kill @e[type=armor_stand, tag=QuickTimer, distance=..1]