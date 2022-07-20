# When using this function in a command block:
# Command block type: Repeat
# Position it to main block
# Check "if entity @p[team=Hiders, distance=..4]""

execute if score @s stationCounter matches 15 run title @a[distance=..4] actionbar [{"text":"████████████", "color":"red"}]
execute if score @s stationCounter matches 30 run title @a[distance=..4] actionbar [{"text":"██", "color":"green"},{"text":"██████████", "color":"red"}]
execute if score @s stationCounter matches 45 run title @a[distance=..4] actionbar [{"text":"████", "color":"green"},{"text":"████████", "color":"red"}]
execute if score @s stationCounter matches 60 run title @a[distance=..4] actionbar [{"text":"██████", "color":"green"},{"text":"██████", "color":"red"}]
execute if score @s stationCounter matches 75 run title @a[distance=..4] actionbar [{"text":"████████", "color":"green"},{"text":"████", "color":"red"}]
execute if score @s stationCounter matches 90 run title @a[distance=..4] actionbar [{"text":"██████████", "color":"green"},{"text":"██", "color":"red"}]
execute if score @s stationCounter matches 105 run title @a[distance=..4] actionbar [{"text":"████████████", "color":"green"}]
