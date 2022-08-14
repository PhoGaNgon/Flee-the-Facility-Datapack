execute if entity @e[type=armor_stand, tag=CameraTimer] as @a[team=Hiders] run tp @e[type=armor_stand, tag=MainCamera, limit=1]

execute unless entity @e[type=armor_stand, tag=CameraTimer] run setblock ~ ~-1 ~ air