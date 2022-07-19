# Level 50 has 292 xp points until level up
xp set @a 50 levels

# Stamina commands
scoreboard players add @a[scores={stamina=..97}] stamina 1

# Stamina reduce by jump commands
execute as @a[scores={jump=1..}] run scoreboard players remove @s stamina 50
xp add @a[scores={jump=1..}] -150 points
scoreboard players set @p[scores={jump=1..}] jump 0

# Prevent jump from low stamina
execute as @a[scores={stamina=..50}] run effect give @s jump_boost 1 128 true
# Allow jump again
execute as @a[scores={stamina=50}] run effect clear @s jump_boost

# Stamina to XP commands
execute as @a[scores={stamina=..97}] run xp add @s 3 points

execute as @a[scores={stamina=98..}] run xp set @s 291 points
xp set @a 0 levels

# Running particle effects
execute as @a[team=Hiders, scores={sprint=1..}] at @s run particle dust 1 0 0 1 ~ ~ ~ .1 .1 .1 1 10 normal @a[team=Hunter]
execute as @a[team=Hiders, scores={sprint=1..}] at @s run scoreboard players set @s sprint 0
execute as @a[team=Hiders, scores={sprintLong=100..}] at @s run playsound block.stone.step master @a[team=Hunter] ~ ~ ~ 2 1
execute as @a[team=Hiders, scores={sprintLong=100..}] at @s run scoreboard players set @s sprintLong 0

# Give everyone saturation
effect give @a saturation 999999 3 true