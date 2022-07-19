# Teleport allay to human
execute as PhoGaNgon if entity @s[tag=leash, scores={deathCount=0}] at @s run tp @e[type=allay, name="PhoGaNgon"] ~ ~-1 ~ ~ ~
execute as Baconking26 if entity @s[tag=leash, scores={deathCount=0}] at @s run tp @e[type=allay, name="Baconking26"] ~ ~-1 ~ ~ ~
execute as JBEmeraldMC if entity @s[tag=leash, scores={deathCount=0}] at @s run tp @e[type=allay, name="JBEmeraldMC"] ~ ~-1 ~ ~ ~
execute as INSERTNAME1 if entity @s[tag=leash, scores={deathCount=0}] at @s run tp @e[type=allay, name="INSERTNAME1"] ~ ~-1 ~ ~ ~
execute as INSERTNAME2 if entity @s[tag=leash, scores={deathCount=0}] at @s run tp @e[type=allay, name="INSERTNAME2"] ~ ~-1 ~ ~ ~

# Teleport leashed allay to Hunter if too far
execute if entity @e[type=allay, tag=leashed] as @p[team=Hunter] at @s run tp @e[distance=10.., type=allay, tag=leashed] @s

# Execute when person dies
execute as @a[scores={deathCount=1..}, tag=leash] run gamemode spectator @s
execute as @a[scores={deathCount=1..}, tag=leash] run tag @s add spectating
execute as @a[scores={deathCount=1..}, tag=leash] run tag @s add deathExplosion
execute as @a[scores={deathCount=1..}, tag=leash] run tag @s remove leash
execute as @a[scores={deathCount=1..}] run scoreboard players set @s deathCount 0

# Make dead people teleport to their respective allays
# Player specific conditions
execute as PhoGaNgon if entity @s[tag=deathExplosion] run tp @s @e[type=allay, name="PhoGaNgon", limit=1]
execute as Baconking26 if entity @s[tag=deathExplosion] run tp @s @e[type=allay, name="Baconking26", limit=1]
execute as JBEmeraldMC if entity @s[tag=deathExplosion] run tp @s @e[type=allay, name="JBEmeraldMC", limit=1]
execute as INSERTNAME1 if entity @s[tag=deathExplosion] run tp @s @e[type=allay, name="INSERTNAME1", limit=1]
execute as INSERTNAME2 if entity @s[tag=deathExplosion] run tp @s @e[type=allay, name="INSERTNAME2", limit=1]

# Shift allay position up by one
# Make dead person's allay visible
# Play death effect
execute as @p[tag=deathExplosion] at @s run tp @e[type=allay, tag=ghost, distance=..1, sort=nearest, limit=1] ~ ~2.25 ~
execute as @p[tag=deathExplosion] at @s run tp @s ~ ~2.25 ~
execute as @p[tag=deathExplosion] at @s run effect clear @e[type=allay, tag=ghost, limit=1, sort=nearest, distance=..1] invisibility
execute as @p[tag=deathExplosion] at @s run playsound entity.elder_guardian.death master @a
execute as @p[tag=deathExplosion] at @s run playsound block.bell.resonate master @a
execute as @p[tag=deathExplosion] at @s run particle sculk_soul ~ ~0.25 ~ 0.3 0.5 0.3 .05 100
execute as @p[tag=deathExplosion] run tag @s remove deathExplosion

# Make dead player spectate their allay
execute as @a[tag=spectating] at @s run spectate @e[type=allay, tag=ghost, distance=..1, sort=nearest, limit=1]

# Leash behavior
execute as @e[tag=ghost, tag=!leashed, type=allay] if data entity @s Leash run tag @s add leashed
execute as @e[type=allay, tag=ghost, tag=leashed] run data merge entity @s {NoAI:0}
execute as @e[tag=leashed, type=allay] unless data entity @s Leash run tag @s remove leashed
execute as @e[type=allay, tag=ghost, tag=!leashed] run data merge entity @s {NoAI:1}
execute as @e[tag=ghost, tag=leashed] at @s run tp @s ~ ~ ~ facing entity @p[team=Hunter]
execute as @e[tag=ghost, tag=leashed] at @s run tag @p[team=Hiders, distance=..0.1] add leashed

# Return lead if broken
execute if entity @e[type=item, name="Lead"] run give @p[team=Hunter] lead
kill @e[type=item, name="Lead"]

function leash:timer

# Highlight cryochamber when someone is leashed
execute if entity @e[type=allay, tag=leashed] run effect give @e[type=skeleton, tag=highlighter, team=Hiders] glowing 1 1 true
execute if entity @e[type=allay, tag=leashed] as @e[type=skeleton, tag=highlighter, team=Hiders] at @s run tp @s ~ ~ ~ facing entity @p[team=Hunter]

# Kill any leashBreakers
execute unless entity @e[type=allay, tag=leashed] run kill @e[type=armor_stand, tag=leashBreaker]