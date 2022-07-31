scoreboard players add @s healTime 1
attribute @s generic.movement_speed base set 0

# Healer cancels action
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:apple"}}] run function useitem:appleheal/healcanceled
execute unless entity @p[distance=0.01..2, scores={Health=..19}] run function useitem:appleheal/healcanceled

# Display titles - healing progress bar
title @a[sort=nearest, limit=2] title ""

title @a[sort=nearest, limit=2] times 0 50 20
execute as @s[scores={healTime=1}] run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=1}] run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=1}] run title @a[sort=nearest, limit=2] subtitle {"text":"██████████","color":"white"}
execute as @s[scores={healTime=32}] run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=32}] run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=32}] run title @a[sort=nearest, limit=2] subtitle [{"text":"█","color":"green"},{"text":"█████████","color":"white"}]
execute as @s[scores={healTime=64}] run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=64}] run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=64}] run title @a[sort=nearest, limit=2] subtitle [{"text":"██","color":"green"},{"text":"████████","color":"white"}]
execute as @s[scores={healTime=96}] run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=96}] run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=96}] run title @a[sort=nearest, limit=2] subtitle [{"text":"███","color":"green"},{"text":"███████","color":"white"}]
execute as @s[scores={healTime=128}] run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=128}] run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=128}] run title @a[sort=nearest, limit=2] subtitle [{"text":"████","color":"green"},{"text":"██████","color":"white"}]
execute as @s[scores={healTime=160}] run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=160}] run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=160}] run title @a[sort=nearest, limit=2] subtitle [{"text":"█████","color":"green"},{"text":"█████","color":"white"}]
execute as @s[scores={healTime=192}] run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=192}] run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=192}] run title @a[sort=nearest, limit=2] subtitle [{"text":"██████","color":"green"},{"text":"████","color":"white"}]
execute as @s[scores={healTime=224}] run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=224}] run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=224}] run title @a[sort=nearest, limit=2] subtitle [{"text":"███████","color":"green"},{"text":"███","color":"white"}]
execute as @s[scores={healTime=256}] run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=256}] run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=256}] run title @a[sort=nearest, limit=2] subtitle [{"text":"████████","color":"green"},{"text":"██","color":"white"}]
execute as @s[scores={healTime=288}] run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=288}] run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=288}] run title @a[sort=nearest, limit=2] subtitle [{"text":"█████████","color":"green"},{"text":"█","color":"white"}]
execute as @s[scores={healTime=320}] run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=320}] run playsound entity.player.levelup master @a
execute as @s[scores={healTime=320}] run title @a[sort=nearest, limit=2] times 0 10 20
execute as @s[scores={healTime=320}] run title @a[sort=nearest, limit=2] subtitle {"text":"██████████","color":"green"}

execute if score @s healTime matches 320.. as @p[team=Hiders, distance=0.01..2] run tag @s add healed
execute if score @s healTime matches 320.. run clear @s apple 1
execute if score @s healTime matches 320.. run tag @s add onHealCooldown
execute if score @s healTime matches 320.. run scoreboard players set @s healTime 0
