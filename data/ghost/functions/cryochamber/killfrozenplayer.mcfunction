# When player dies of freezing
effect clear @s
tag @s remove ghostLink
tag @s remove frozen
tag @s add dead
# Make their allay visible and move it up to be properly displayed in the cryochamber
execute positioned ~ ~-1 ~ run effect clear @e[type=allay, tag=ghost, sort=nearest, limit=1, distance=..1] invisibility
tp @e[type=allay, tag=ghost, sort=nearest, limit=1, distance=..1] ~ ~-0.5 ~ ~ ~
# Lock the cryochamber so that it cannot be used again until reset
tag @e[type=skeleton, tag=cryochamber, sort=nearest, distance=..1, limit=1] add locked
# Put player in spectator and display all titles and messages
gamemode spectator @s
title @a times 0 60 20
# This appears to everyone
tellraw @a [{"text":"","bold":true,"extra":[{"selector":"@s"}],"color":"red"},{"text":" has been","color":"white"},{"text":" FROZEN...","color":"#42a1f5"}]
title @a[distance=.1..] subtitle [{"text":"","color":"red","bold":true,"extra":[{"selector":"@s"}]},{"text":" has been","color":"white"},{"text":" FROZEN...","color":"#42a1f5"}]
title @a[distance=.1..] title ""
# This appears to the person that died
title @s title {"text":"PERMAFROST","color":"red","bold":true}
playsound entity.ghast.death master @a
scoreboard players set @s freezeTimer 0