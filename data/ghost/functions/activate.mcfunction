
# Assign allays to players
execute as @p[tag=init] positioned ~ ~1 ~ run function ghost:init

# After death behavior
execute unless entity @a[tag=deathExplode] as @p[team=Hiders, scores={deathCount=1..}] run function ghost:death/playerdeath
execute as @a[tag=ghost] run function ghost:death/deathtimer

# Make allay follow its player if they are alive
execute as @a[tag=ghostLink] run function ghost:followplayer

# Return lead to Hunter if broken
execute if entity @e[type=item, name="Lead"] run give @p[team=Hunter] lead
kill @e[type=item, name="Lead"]

# Display particles at spectators
execute at @a[tag=dead] run particle minecraft:dust_color_transition 1 0.2 0.2 1 1 1 1 ~ ~1.75 ~ .1 .1 .1 1 2 normal @a[distance=0.1.., team=!Hunter]