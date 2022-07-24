# Teleport allay to human
# Player specific conditions
execute as PhoGaNgon if entity @s[tag=leash, scores={deathCount=0}] at @s run tp @e[type=allay, name="PhoGaNgon"] ~ ~-1 ~ ~ ~
execute as Baconking26 if entity @s[tag=leash, scores={deathCount=0}] at @s run tp @e[type=allay, name="Baconking26"] ~ ~-1 ~ ~ ~
execute as JBEmeraldMC if entity @s[tag=leash, scores={deathCount=0}] at @s run tp @e[type=allay, name="JBEmeraldMC"] ~ ~-1 ~ ~ ~
execute as INSERTNAME1 if entity @s[tag=leash, scores={deathCount=0}] at @s run tp @e[type=allay, name="INSERTNAME1"] ~ ~-1 ~ ~ ~
execute as INSERTNAME2 if entity @s[tag=leash, scores={deathCount=0}] at @s run tp @e[type=allay, name="INSERTNAME2"] ~ ~-1 ~ ~ ~

# Teleport leashed allay to Hunter if too far
execute if entity @e[type=allay, tag=leashed] as @p[team=Hunter] at @s run tp @e[distance=10.., type=allay, tag=leashed] @s
