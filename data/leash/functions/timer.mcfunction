# Death timer behavior
execute as @a[tag=!leash, tag=spectating] run scoreboard players add @s deathTimer 1

# Player specific conditions
execute if score PhoGaNgon deathTimer matches 500.. run effect give @e[type=allay, name="PhoGaNgon", tag=ghost] invisibility 999999 1 true
execute if score Baconking26 deathTimer matches 500.. run effect give @e[type=allay, name="Baconking26", tag=ghost] invisibility 999999 1 true
execute if score JBEmeraldMC deathTimer matches 500.. run effect give @e[type=allay, name="JBEmeraldMC", tag=ghost] invisibility 999999 1 true
execute if score INSERTNAME1 deathTimer matches 500.. run effect give @e[type=allay, name="INSERTNAME1", tag=ghost] invisibility 999999 1 true
execute if score INSERTNAME2 deathTimer matches 500.. run effect give @e[type=allay, name="INSERTNAME2", tag=ghost] invisibility 999999 1 true

execute as @a[tag=leashed, scores={deathTimer=500..}] at @s run summon armor_stand ~ ~15 ~ {Tags:["leashBreaker"]}
execute as @a[tag=leashed, scores={deathTimer=500..}] at @s run data modify entity @e[type=allay, tag=leashed, limit=1] Leash set from entity @e[type=armor_stand, tag=leashBreaker, limit=1]
execute as @a[scores={deathTimer=500..}] run gamemode adventure @s
execute as @a[scores={deathTimer=500..}] run tag @s remove spectating
execute as @a[scores={deathTimer=500..}] run tag @s remove leashed
execute as @a[scores={deathTimer=500..}] run tag @s add leash

# ----------------------
# Freeze timer behavior
# When player dies, remove effects, put in spectator and position allay into head position
execute as @a[scores={freezeTimer=1200..}] run effect clear @s
execute as @a[scores={freezeTimer=1200..}] at @s positioned ~ ~-1 ~ run effect clear @e[type=allay, tag=ghost, sort=nearest, limit=1, distance=..1] invisibility
execute as @a[scores={freezeTimer=1200..}] at @s positioned ~ ~-1 ~ run tp @e[type=allay, tag=ghost, sort=nearest, limit=1, distance=..1] ~ ~1.5 ~ ~ ~
execute as @a[scores={freezeTimer=1200..}] run tag @e[type=skeleton, tag=highlighter, sort=nearest, distance=..1, limit=1] add locked
execute as @a[scores={freezeTimer=1200..}] run gamemode spectator @s
execute as @a[scores={freezeTimer=1200..}] run tag @s remove leash
execute as @a[scores={freezeTimer=1200..}] run tag @s remove frozen
execute as @a[scores={freezeTimer=1200..}] run scoreboard players set @s freezeTimer 0

execute as @a[tag=!spectating] run scoreboard players set @s deathTimer 0