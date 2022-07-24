function leash:followplayer

# Execute deathExplosion function slightly delayed after death
execute as @p[scores={deathCount=1..}] run schedule function leash:deathexplosion 1t

# Make dead player spectate their allay and cannot escape
# Player specific conditions
execute as @a[name="PhoGaNgon", tag=spectating] at @s run spectate @e[type=allay, tag=ghost, name="PhoGaNgon", limit=1]
execute as @a[name="Baconking26", tag=spectating] at @s run spectate @e[type=allay, tag=ghost, name="Baconking26", limit=1]
execute as @a[name="JBEmeraldMC", tag=spectating] at @s run spectate @e[type=allay, tag=ghost, name="JBEmeraldMC", limit=1]
execute as @a[name="INSERTNAME1", tag=spectating] at @s run spectate @e[type=allay, tag=ghost, name="INSERTNAME1", limit=1]
execute as @a[name="INSERTNAME2", tag=spectating] at @s run spectate @e[type=allay, tag=ghost, name="INSERTNAME2", limit=1]

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