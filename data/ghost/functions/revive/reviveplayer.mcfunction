tag @s remove ghost
tag @s remove leashed
tag @s remove spectatingAllay
tag @s add ghostLink

scoreboard players operation .revive ghost_sid = @s ghost_sid
tag @s add revive

execute as @e[type=allay, tag=ghost] if score @s ghost_sid = .revive ghost_sid at @s run function ghost:revive/reviveplayerallay

tag @s remove revive

gamemode adventure @s
scoreboard players set @s deathTimer 0