# Teleport allay inside cryochamber
tp @e[type=allay, tag=leashed, limit=1] @s

# Put player inside cryochamber
tp @p[tag=leashed] @s
tag @p[distance=..3, tag=spectating] add frozen
gamemode adventure @p[distance=..3, tag=frozen]
tag @p[distance=..3, tag=frozen] remove spectating
tag @p[distance=..3, tag=frozen] add leash
tag @p[distance=..3, tag=frozen] remove leashed
effect give @p[distance=..3, tag=frozen] glowing 100 1 true
execute as @p[distance=..3, tag=frozen] run tellraw @a[team=Hiders] [{"text":"","color":"red","extra":[{"selector":"@s"}]},{"text":" has been captured!"}]

# Break lead from allay
summon armor_stand ~ ~15 ~ {Tags:["leashBreaker"]}
effect give @e[type=allay, tag=leashed] invisibility 999999 1 true
data modify entity @e[type=allay, tag=leashed, limit=1] Leash set from entity @e[type=armor_stand, tag=leashBreaker, limit=1]
