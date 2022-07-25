# Occurs at the allay after its owner dies
# Makes cool death explosion effect
tp ~ ~2.25 ~
effect clear @s invisibility
execute at @s run playsound entity.elder_guardian.death master @a
execute at @s run playsound block.bell.resonate master @a
execute at @s run particle sculk_soul ~ ~0.25 ~ 0.3 0.5 0.3 .05 100
