execute as @a[scores={Test=1..}, nbt={OnGround:1b}] at @s run function useitem:ironsmash/chargeability
execute as @a[tag=IronSpike] run scoreboard players remove @s Test 1
kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}}]

tp @a[tag=IronSpike] @e[type=armor_stand, tag=IronSpikeCharge, limit=1]

execute as @p[tag=IronSpike, scores={Test=0}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute as @p[tag=IronSpike, scores={Test=-4}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.059463
execute as @p[tag=IronSpike, scores={Test=-8}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.122462
execute as @p[tag=IronSpike, scores={Test=-12}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.189207
execute as @p[tag=IronSpike, scores={Test=-16}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.259921
execute as @p[tag=IronSpike, scores={Test=0}] at @s run playsound entity.iron_golem.death master @a[distance=..20] ~ ~ ~ 1

execute as @p[tag=IronSpike] run title @s times 0 5 5
execute as @p[tag=IronSpike, scores={Test=-3..0}] at @s run title @s actionbar [{"text":"█", "color":"green"},{"text":"████", "color":"red"}]
execute as @p[tag=IronSpike, scores={Test=-7..-4}] at @s run title @s actionbar [{"text":"██", "color":"green"},{"text":"███", "color":"red"}]
execute as @p[tag=IronSpike, scores={Test=-11..-8}] at @s run title @s actionbar [{"text":"███", "color":"green"},{"text":"██", "color":"red"}]
execute as @p[tag=IronSpike, scores={Test=-15..-12}] at @s run title @s actionbar [{"text":"████", "color":"green"},{"text":"█", "color":"red"}]
execute as @p[tag=IronSpike, scores={Test=-19..-16}] at @s run title @s actionbar [{"text":"█████", "color":"green"}]

execute as @p[tag=IronSpike, scores={Test=-20}] at @s rotated ~ 0 positioned ^ ^ ^5 run function useitem:ironsmash/rupture
execute as @p[tag=IronSpike, scores={Test=-25}] at @s rotated ~ 0 positioned ^ ^ ^11 run function useitem:ironsmash/rupture
execute as @p[tag=IronSpike, scores={Test=-30}] at @s rotated ~ 0 positioned ^ ^ ^17 run function useitem:ironsmash/rupture
execute if entity @p[tag=IronSpike, scores={Test=-30}] run schedule function useitem:ironsmash/delayeddamage 10t

execute as @p[tag=IronSpike, scores={Test=..-30}] at @s run function useitem:ironsmash/finishability
