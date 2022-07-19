# When using in a command block:
# Command block type: Impulse
# Position it at the main block

execute if entity @e[type=armor_stand, name="QuickTime", scores={stationCounter=35..40}, distance=..1] if entity @e[type=armor_stand, name="HackSuccessCounter", scores={stationCounter=15}, distance=..1] run function hacking:success
execute if entity @e[type=armor_stand, name="QuickTime", scores={stationCounter=23..28}, distance=..1] if entity @e[type=armor_stand, name="HackSuccessCounter", scores={stationCounter=30}, distance=..1] run function hacking:success
execute if entity @e[type=armor_stand, name="QuickTime", scores={stationCounter=29..34}, distance=..1] if entity @e[type=armor_stand, name="HackSuccessCounter", scores={stationCounter=45}, distance=..1] run function hacking:success
execute if entity @e[type=armor_stand, name="QuickTime", scores={stationCounter=17..22}, distance=..1] if entity @e[type=armor_stand, name="HackSuccessCounter", scores={stationCounter=60}, distance=..1] run function hacking:success
execute if entity @e[type=armor_stand, name="QuickTime", scores={stationCounter=23..28}, distance=..1] if entity @e[type=armor_stand, name="HackSuccessCounter", scores={stationCounter=75}, distance=..1] run function hacking:success
execute if entity @e[type=armor_stand, name="QuickTime", scores={stationCounter=41..46}, distance=..1] if entity @e[type=armor_stand, name="HackSuccessCounter", scores={stationCounter=90}, distance=..1] run function hacking:success
execute unless block ~ ~ ~ black_concrete unless block ~ ~ ~ emerald_block run function hacking:failure


kill @e[type=armor_stand, name="QuickTime", distance=..1]
kill @e[type=armor_stand, name="QuickTimer", distance=..1]