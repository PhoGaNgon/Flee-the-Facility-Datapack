# Healing mechanic
# Item: apple

# Detect healer
execute as @a[team=Hiders, tag=!onHealCooldown, nbt={SelectedItem:{id:"minecraft:apple"}}] at @s if entity @p[team=Hiders, distance=.01..2] run tag @s add healer
execute as @a[tag=healer] at @s if entity @p[team=Hiders, distance=.01..2] run scoreboard players add @s healTime 1
execute as @a[tag=healer] run attribute @s generic.movement_speed base set 0

# Healer cancels heal
execute as @a[tag=healer, nbt=!{SelectedItem:{id:"minecraft:apple"}}] run tag @s add healCanceled
execute as @a[tag=healer] at @s unless entity @p[team=Hiders, distance=.01..2] run tag @s add healCanceled
execute as @a[tag=healer, tag=healCanceled] run tag @s remove healer
execute as @a[tag=healCanceled] run scoreboard players set @s healTime 0
execute as @a[tag=healCanceled] run attribute @s generic.movement_speed base set .1
execute as @a[tag=healCanceled] run title @s title ""
execute as @a[tag=healCanceled] run tag @s remove healCanceled

# Add cooldown when successfully healing a player
execute as @a[tag=healer, scores={healTime=320..}] at @s run tag @p[team=Hiders, distance=.01..2] add healed
execute as @a[tag=healer, scores={healTime=320..}] run tag @s add onHealCooldown
execute as @a[tag=healer, scores={healTime=320..}] run clear @s apple 1
execute as @a[tag=healer, tag=onHealCooldown] run scoreboard players set @s healTime 0
execute as @a[tag=healer, tag=onHealCooldown] run tag @s remove healer
execute as @a[tag=onHealCooldown] run scoreboard players add @s healTime 1
execute as @a[tag=onHealCooldown] run attribute @s generic.movement_speed base set .1
execute as @a[tag=onHealCooldown, scores={healTime=200..}] run title @s actionbar [{"text":"Kissy time","color":"#f5428d"},{"text":" is now available","color":"green"}]
execute as @a[tag=onHealCooldown, scores={healTime=200..}] run scoreboard players set @s healTime -10
execute as @a[tag=onHealCooldown, scores={healTime=..-1}] run give @s apple
execute as @a[tag=onHealCooldown, scores={healTime=..-1}] run tag @s remove onHealCooldown
execute as @a[scores={healTime=..-1}] run scoreboard players reset @s healTime

# Heal the wounded player
execute as @a[tag=healed] run effect give @s regeneration 1 255 true
execute as @a[tag=healed, scores={Health=..19}, nbt={ActiveEffects:[{Id:10, Amplifier: -1b}]}] at @s run playsound entity.item.pickup master @s
execute as @a[tag=healed, scores={Health=20..}] run effect clear @s regeneration
execute as @a[tag=healed, scores={Health=20..}] run tag @s remove healed

# Display titles - healing progress bar
execute as @a[tag=healer] run title @s title ""

execute as @a[tag=healer] run title @s times 0 50 20
execute as @a[tag=healer, scores={healTime=1}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @a[tag=healer, scores={healTime=1}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @a[tag=healer, scores={healTime=1}] run title @s subtitle {"text":"██████████","color":"white"}
execute as @a[tag=healer, scores={healTime=32}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @a[tag=healer, scores={healTime=32}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @a[tag=healer, scores={healTime=32}] run title @s subtitle [{"text":"█","color":"green"},{"text":"█████████","color":"white"}]
execute as @a[tag=healer, scores={healTime=64}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @a[tag=healer, scores={healTime=64}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @a[tag=healer, scores={healTime=64}] run title @s subtitle [{"text":"██","color":"green"},{"text":"████████","color":"white"}]
execute as @a[tag=healer, scores={healTime=96}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @a[tag=healer, scores={healTime=96}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @a[tag=healer, scores={healTime=96}] run title @s subtitle [{"text":"███","color":"green"},{"text":"███████","color":"white"}]
execute as @a[tag=healer, scores={healTime=128}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @a[tag=healer, scores={healTime=128}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @a[tag=healer, scores={healTime=128}] run title @s subtitle [{"text":"████","color":"green"},{"text":"██████","color":"white"}]
execute as @a[tag=healer, scores={healTime=160}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @a[tag=healer, scores={healTime=160}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @a[tag=healer, scores={healTime=160}] run title @s subtitle [{"text":"█████","color":"green"},{"text":"█████","color":"white"}]
execute as @a[tag=healer, scores={healTime=192}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @a[tag=healer, scores={healTime=192}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @a[tag=healer, scores={healTime=192}] run title @s subtitle [{"text":"██████","color":"green"},{"text":"████","color":"white"}]
execute as @a[tag=healer, scores={healTime=224}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @a[tag=healer, scores={healTime=224}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @a[tag=healer, scores={healTime=224}] run title @s subtitle [{"text":"███████","color":"green"},{"text":"███","color":"white"}]
execute as @a[tag=healer, scores={healTime=256}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @a[tag=healer, scores={healTime=256}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @a[tag=healer, scores={healTime=256}] run title @s subtitle [{"text":"████████","color":"green"},{"text":"██","color":"white"}]
execute as @a[tag=healer, scores={healTime=288}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @a[tag=healer, scores={healTime=288}] at @s run playsound block.composter.ready master @a ~ ~ ~ 1 .75
execute as @a[tag=healer, scores={healTime=288}] run title @s subtitle [{"text":"█████████","color":"green"},{"text":"█","color":"white"}]
execute as @a[tag=healer, scores={healTime=319}] at @s run particle heart ~ ~1 ~ .5 1 .5 1 5
execute as @a[tag=healer, scores={healTime=319}] at @s run playsound entity.player.levelup master @a
execute as @a[tag=healer, scores={healTime=319}] run title @s times 0 10 20
execute as @a[tag=healer, scores={healTime=319}] run title @s subtitle {"text":"██████████","color":"green"}
