scoreboard players operation .follow sid = @s sid

tag @s add tpToMe
execute at @s as @e[type=allay, tag=ghost] if score @s sid = .follow sid run tp @s ~ ~-1 ~ ~ ~
tag @s remove tpToMe