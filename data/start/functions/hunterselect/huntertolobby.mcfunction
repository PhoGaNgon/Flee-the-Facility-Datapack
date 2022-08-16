tp @s 1371 29 1731 0 0

execute at @s run particle campfire_cosy_smoke ~ ~1 ~ 1 1 1 0.01 40
execute at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 0.7 0

tag @s add endgame
effect give @s resistance 999999 255 true
gamemode adventure @s
give @s lead

title @s times 0 80 20

title @s title [{"text":"You are the "},{"text":"HUNTER...","color":"dark_red"}]
title @s subtitle [{"text":"Select a monster","color":"red"}]
