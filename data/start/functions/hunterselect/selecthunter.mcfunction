# Assigns random values to each player once
execute unless entity @p[scores={HunterSelector=1..}] as @a[sort=random] run function start:hunterselect/assignvalues

team join Hiders @a

# Finds the player with the highest number to set as Hunter
scoreboard players set .highest HunterSelector 0
execute as @a run scoreboard players operation .highest HunterSelector > @s HunterSelector

execute as @a if score @s HunterSelector = .highest HunterSelector run team join Hunter @s

# Perform to hunter
execute as @p[team=Hunter] run scoreboard players set @s HunterSelector 0

execute as @p[team=Hunter] at @s run function start:hunterselect/huntertolobby

scoreboard players add @a HunterSelector 1