# Displays progress bar

execute if score @s StationCounter matches 15 run title @a[distance=..4, team=Hiders] actionbar [{"text":"████████████", "color":"red"}]
execute if score @s StationCounter matches 30 run title @a[distance=..4, team=Hiders] actionbar [{"text":"██", "color":"green"},{"text":"██████████", "color":"red"}]
execute if score @s StationCounter matches 45 run title @a[distance=..4, team=Hiders] actionbar [{"text":"████", "color":"green"},{"text":"████████", "color":"red"}]
execute if score @s StationCounter matches 60 run title @a[distance=..4, team=Hiders] actionbar [{"text":"██████", "color":"green"},{"text":"██████", "color":"red"}]
execute if score @s StationCounter matches 75 run title @a[distance=..4, team=Hiders] actionbar [{"text":"████████", "color":"green"},{"text":"████", "color":"red"}]
execute if score @s StationCounter matches 90 run title @a[distance=..4, team=Hiders] actionbar [{"text":"██████████", "color":"green"},{"text":"██", "color":"red"}]
execute if score @s StationCounter matches 105 run title @a[distance=..4, team=Hiders] actionbar [{"text":"████████████", "color":"green"}]
