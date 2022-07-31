# Freezes the frozen player in place within the cryochamber
execute at @e[type=skeleton, tag=cryochamber, distance=..3, limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~

execute unless entity @p[team=Hunter, distance=..6] run scoreboard players add @s freezeTimer 1
execute unless entity @p[team=Hunter, distance=..6] run particle snowflake ~ ~1 ~ .3 .5 .3 0.01 1

# Frozen display bar
title @s times 0 10 0
execute if score @s freezeTimer matches ..1199 run title @s title ""
execute if score @s freezeTimer matches ..99 run title @s subtitle [{"text":"████████████", "color":"white"}]
execute if score @s freezeTimer matches 100..199 run title @s subtitle [{"text":"█", "color":"#42a1f5"},{"text":"███████████", "color":"white"}]
execute if score @s freezeTimer matches 200..299 run title @s subtitle [{"text":"██", "color":"#42a1f5"},{"text":"██████████", "color":"white"}]
execute if score @s freezeTimer matches 300..399 run title @s subtitle [{"text":"███", "color":"#42a1f5"},{"text":"█████████", "color":"white"}]
execute if score @s freezeTimer matches 400..499 run title @s subtitle [{"text":"████", "color":"#42a1f5"},{"text":"████████", "color":"white"}]
execute if score @s freezeTimer matches 500..599 run title @s subtitle [{"text":"█████", "color":"#42a1f5"},{"text":"███████", "color":"white"}]
execute if score @s freezeTimer matches 600..699 run title @s subtitle [{"text":"██████", "color":"#42a1f5"},{"text":"██████", "color":"white"}]
execute if score @s freezeTimer matches 700..799 run title @s subtitle [{"text":"███████", "color":"#42a1f5"},{"text":"█████", "color":"white"}]
execute if score @s freezeTimer matches 800..899 run title @s subtitle [{"text":"████████", "color":"#42a1f5"},{"text":"████", "color":"white"}]
execute if score @s freezeTimer matches 900..999 run title @s subtitle [{"text":"█████████", "color":"#42a1f5"},{"text":"███", "color":"white"}]
execute if score @s freezeTimer matches 1000..1099 run title @s subtitle [{"text":"██████████", "color":"#42a1f5"},{"text":"██", "color":"white"}]
execute if score @s freezeTimer matches 1100..1198 run title @s subtitle [{"text":"███████████", "color":"#42a1f5"},{"text":"█", "color":"white"}]
execute if score @s freezeTimer matches 1199.. run title @s subtitle {"text":"████████████", "color":"#42a1f5"}

# Play freezing sounds
execute at @s if score @s freezeTimer matches 100 run playsound entity.player.hurt_freeze master @s
execute at @s if score @s freezeTimer matches 200 run playsound entity.player.hurt_freeze master @s
execute at @s if score @s freezeTimer matches 300 run playsound entity.player.hurt_freeze master @s
execute at @s if score @s freezeTimer matches 400 run playsound entity.player.hurt_freeze master @s
execute at @s if score @s freezeTimer matches 500 run playsound entity.player.hurt_freeze master @s
execute at @s if score @s freezeTimer matches 600 run playsound entity.player.hurt_freeze master @s
execute at @s if score @s freezeTimer matches 700 run playsound entity.player.hurt_freeze master @s
execute at @s if score @s freezeTimer matches 800 run playsound entity.player.hurt_freeze master @s
execute at @s if score @s freezeTimer matches 900 run playsound entity.player.hurt_freeze master @s
execute at @s if score @s freezeTimer matches 1000 run playsound entity.player.hurt_freeze master @s
execute at @s if score @s freezeTimer matches 1100 run playsound entity.player.hurt_freeze master @s
execute at @s if score @s freezeTimer matches 1199.. run playsound entity.player.hurt_freeze master @s

# Kill frozen player ocne time has run out for them
execute if score @s freezeTimer matches 1200.. as @s at @s run function ghost:cryochamber/killfrozenplayer
