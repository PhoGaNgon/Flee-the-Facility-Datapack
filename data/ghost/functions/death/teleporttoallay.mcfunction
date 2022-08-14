gamemode spectator @a[tag=deathExplode]

scoreboard players operation .teleport ghost_sid = @p[tag=deathExplode] ghost_sid
execute as @e[type=allay, tag=ghost] if score @s ghost_sid = .teleport ghost_sid run tp @a[tag=deathExplode] @s

schedule function ghost:death/markasspectator 5t