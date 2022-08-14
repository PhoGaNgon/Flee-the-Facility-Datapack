data merge block ~ ~-1 ~ {powered:false}
execute unless entity @e[type=armor_stand, tag=StationCounter, distance=..1] unless block ~ ~ ~ red_glazed_terracotta run function hacking:resetstation
execute if block ~ ~ ~ black_concrete run scoreboard players add @e[type=minecraft:armor_stand, tag=StationCounter, distance=..1] StationCounter 1
execute if score @e[type=armor_stand, tag=StationCounter, distance=..1, limit=1] StationCounter = @e[type=armor_stand, tag=HackSuccessCounter, distance=..1, limit=1] StationCounter unless entity @e[type=armor_stand, tag=QuickTime, distance=..1] run summon armor_stand ~ ~ ~ {Tags:["QuickTime"], NoGravity:1, Invisible:1, Invulnerable:1}

# 2_1: 1428 26 1914
# 2_2: 1383 26 1930
# 3_1: 1358 27 1865
# 3_2: 1358 34 1865
# 4_1: 1315 26 1811
# 4_2: 1309 32 1843
# 5_1: 1316 26 1872
# 5_2: 1326 26 1923
