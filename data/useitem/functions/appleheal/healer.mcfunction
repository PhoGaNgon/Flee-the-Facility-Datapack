execute unless entity @s[nbt={SelectedItem:{id:"minecraft:apple"}}] run function useitem:appleheal/healcanceled
execute unless entity @p[distance=0.01..2, scores={Health=..19}] run function useitem:appleheal/healcanceled

scoreboard players add @s healTime 1
attribute @s generic.movement_speed base set 0

# Display titles - healing progress bar
execute as @a[tag=healer] run title @s title ""

execute as @s run title @s times 0 50 20
execute as @s[scores={healTime=1}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=1}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=1}] run title @s subtitle {"text":"██████████","color":"white"}
execute as @s[scores={healTime=32}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=32}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=32}] run title @s subtitle [{"text":"█","color":"green"},{"text":"█████████","color":"white"}]
execute as @s[scores={healTime=64}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=64}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=64}] run title @s subtitle [{"text":"██","color":"green"},{"text":"████████","color":"white"}]
execute as @s[scores={healTime=96}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=96}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=96}] run title @s subtitle [{"text":"███","color":"green"},{"text":"███████","color":"white"}]
execute as @s[scores={healTime=128}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=128}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=128}] run title @s subtitle [{"text":"████","color":"green"},{"text":"██████","color":"white"}]
execute as @s[scores={healTime=160}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=160}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=160}] run title @s subtitle [{"text":"█████","color":"green"},{"text":"█████","color":"white"}]
execute as @s[scores={healTime=192}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=192}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=192}] run title @s subtitle [{"text":"██████","color":"green"},{"text":"████","color":"white"}]
execute as @s[scores={healTime=224}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=224}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=224}] run title @s subtitle [{"text":"███████","color":"green"},{"text":"███","color":"white"}]
execute as @s[scores={healTime=256}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=256}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=256}] run title @s subtitle [{"text":"████████","color":"green"},{"text":"██","color":"white"}]
execute as @s[scores={healTime=288}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=288}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @s[scores={healTime=288}] run title @s subtitle [{"text":"█████████","color":"green"},{"text":"█","color":"white"}]
execute as @s[scores={healTime=320}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @s[scores={healTime=320}] at @s run playsound entity.player.levelup master @a
execute as @s[scores={healTime=320}] run title @s times 0 10 20
execute as @s[scores={healTime=320}] run title @s subtitle {"text":"██████████","color":"green"}

execute if score @s healTime matches 320.. as @p[team=Hiders, distance=0.01..2] run tag @s add healed
execute if score @s healTime matches 320.. run tag @s add onHealCooldown
