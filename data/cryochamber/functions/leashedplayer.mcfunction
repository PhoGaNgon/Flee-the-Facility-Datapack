# Makes leashed allay look at hunter
execute as @e[type=allay, tag=ghost, tag=leashed] at @s run tp @s ~ ~ ~ facing entity @p[team=Hunter]

# Makes all cryochamber skeletons look at hunter
execute as @e[type=skeleton, tag=cryochamber, tag=!locked] at @s run tp @s ~ ~ ~ facing entity @p[team=Hunter]
execute as @e[type=skeleton, tag=cryochamber, tag=!locked] run effect give @s glowing 1 1 true
