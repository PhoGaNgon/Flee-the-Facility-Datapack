tag @s remove dead
tag @s remove leashed
tag @s add ghostLink
effect give @e[type=allay, tag=leashed] invisibility 999999 1 true

# Break lead
execute if entity @e[type=allay, tag=ghost, tag=leashed] run summon armor_stand ~ ~15 ~ {Tags:["leashBreaker"]}
data modify entity @e[type=allay, tag=leashed, sort=nearest, limit=1] Leash set from entity @e[type=armor_stand, tag=leashBreaker, limit=1]
schedule function cryochamber:killleashbreaker 1t

gamemode adventure @s

scoreboard players set @s deathTimer 0