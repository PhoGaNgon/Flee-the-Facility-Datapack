scoreboard players operation .follow ghost_sid = @s ghost_sid

tag @s add tpToMe
execute at @s as @e[type=allay, tag=ghost] if score @s ghost_sid = .follow ghost_sid run tp @s ~ ~-1 ~ ~ ~
tag @s remove tpToMe