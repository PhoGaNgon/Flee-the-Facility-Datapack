scoreboard players add @s healTime 1
attribute @s generic.movement_speed base set 0.10000000149011612
execute as @s[scores={healTime=3600..}] run title @s actionbar [{"text":"Kissy time","color":"#f5428d"},{"text":" is now available","color":"green"}]
execute as @s[scores={healTime=3600..}] run tag @s remove onHealCooldown
execute as @s[scores={healTime=3600..}] run give @s apple
execute as @s[scores={healTime=3600..}] run scoreboard players set @s healTime 0