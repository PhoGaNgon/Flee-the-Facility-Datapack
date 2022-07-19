execute as @a[scores={deathCount=1..}] run tag @s add dead
execute as @a[tag=dead] run tag @s remove leash
execute as @a[tag=dead] run tag @s add spectating
execute as @a[tag=dead] run gamemode spectator @s
execute as @a[tag=dead] run scoreboard players set @s deathCount 0

execute if entity @a[name="PhoGaNgon", tag=dead] run tag @e[type=allay, tag=ghost, name="PhoGaNgon"] add dead
execute if entity @a[name="Baconking26", tag=dead] run tag @e[type=allay, tag=ghost, name="Baconking26"] add dead
execute if entity @a[name="JBEmeraldMC", tag=dead] run tag @e[type=allay, tag=ghost, name="JBEmeraldMC"] add dead
execute if entity @a[name="INSERTNAME1", tag=dead] run tag @e[type=allay, tag=ghost, name="INSERTNAME1"] add dead
execute if entity @a[name="INSERTNAME2", tag=dead] run tag @e[type=allay, tag=ghost, name="INSERTNAME2"] add dead

execute as @e[type=allay, tag=ghost, tag=dead] at @s run tp ~ ~2.25 ~
execute as @e[type=allay, tag=ghost, tag=dead] at @s run playsound entity.elder_guardian.death master @a
execute as @e[type=allay, tag=ghost, tag=dead] at @s run playsound block.bell.resonate master @a
execute as @e[type=allay, tag=ghost, tag=dead] run effect clear @s invisibility
execute as @e[type=allay, tag=ghost, tag=dead] at @s run particle sculk_soul ~ ~0.25 ~ 0.3 0.5 0.3 .05 100
execute as @a[tag=dead] run spectate @e[type=allay, tag=ghost, tag=dead, limit=1] @s
execute as @e[tag=dead] run tag @s remove dead
