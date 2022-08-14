tag @e[type=armor_stand, tag=Camera1] add MainCamera

tp @a[team=Hiders] @e[type=armor_stand, tag=MainCamera, limit=1]
effect give @a[team=Hiders] blindness 1
execute at @e[type=armor_stand, tag=MainCamera] run playsound minecraft:entity.elder_guardian.hurt master @a ~ ~ ~ 1 0

schedule function start:loadcamera/tocamera2 3s