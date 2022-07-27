# Imprisons the leashed player into the cryochamber
tag @s remove dead
tag @s add ghostLink
tag @s add frozen
scoreboard players set @s deathTimer 0

gamemode adventure @s
effect give @s glowing 100 1 true
tp @e[type=skeleton, tag=cryochamber, distance=..3, sort=nearest, limit=1]
tag @e[type=skeleton, tag=cryochamber, distance=..3, sort=nearest, limit=1] add locked

tellraw @a[team=Hiders] [{"text":"","color":"red","extra":[{"selector":"@s"}]},{"text":" has been captured!"}]

summon armor_stand ~ ~15 ~ {Tags:["leashBreaker"]}
effect give @e[type=allay, tag=leashed] invisibility 999999 1 true
data modify entity @e[type=allay, tag=leashed, limit=1] Leash set from entity @e[type=armor_stand, tag=leashBreaker, limit=1]

execute at @s run schedule function cryochamber:killleashbreaker 1t
