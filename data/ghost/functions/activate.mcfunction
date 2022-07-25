# Assign allays to players
execute if entity @p[tag=init] positioned ~ ~1 ~ run function ghost:init

# Make allay follow player
execute as @a[team=Hiders, tag=ghostLink, scores={deathCount=0}] run function ghost:followplayer

# After death behavior
execute unless entity @a[tag=deathExplode] as @p[scores={deathCount=1..}] run tag @s add deathExplode
execute as @p[tag=deathExplode] run function ghost:death
execute as @a[tag=dead] run function ghost:deathtimer

# Freeze behavior