# Makes leashed allay look at hunter
execute at @s run tp @s ~ ~ ~ facing entity @p[team=Hunter]
execute at @s run tp @s @p[team=Hunter, distance=10.., limit=1]

# Makes all cryochamber skeletons look at hunter
execute as @e[type=skeleton, tag=cryochamber, tag=!locked] at @s run tp @s ~ ~ ~ facing entity @p[team=Hunter]
execute as @e[type=skeleton, tag=cryochamber, tag=!locked] run effect give @s glowing 1 1 true
