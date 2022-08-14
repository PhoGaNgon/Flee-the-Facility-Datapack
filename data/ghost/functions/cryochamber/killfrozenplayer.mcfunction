# When player dies of freezing
tag @s remove ghostLink
tag @s remove frozen
tag @s add dead

# Make their allay visible and move it up to be properly displayed in the cryochamber
scoreboard players operation .frozen ghost_sid = @s ghost_sid
execute as @e[type=allay, tag=ghost] if score @s ghost_sid = .frozen ghost_sid run tag @s add frozen
effect clear @e[type=allay, tag=frozen] invisibility
tp @e[type=allay, tag=frozen] ~ ~0.75 ~ ~ ~
tag @e[type=allay, tag=frozen] remove frozen

# Lock the cryochamber so that it cannot be used again until reset
tag @e[type=skeleton, tag=cryochamber, sort=nearest, limit=1] add locked

# Put player in spectator and display all titles and messages
effect clear @s
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