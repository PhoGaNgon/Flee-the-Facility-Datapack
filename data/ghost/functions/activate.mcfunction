# Assign allays to players
execute as @p[tag=init] positioned ~ ~1 ~ run function ghost:init

# After death behavior
execute unless entity @a[tag=deathExplode] as @p[scores={deathCount=1..}] run function ghost:death
execute as @a[tag=dead] run function ghost:deathtimer

# Make allay follow its player if they are alive
execute as @a[tag=ghostLink] run function ghost:followplayer

# Return lead to Hunter if broken
execute if entity @e[type=item, name="Lead"] run give @p[team=Hunter] lead
kill @e[type=item, name="Lead"]