particle block dirt ~ ~ ~ 1.5 0 1.5 1 200
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.7
effect give @a[distance=..3, tag=!HitFromSpike, team=!Hunter] instant_damage
tag @a[distance=..3, team=!Hunter] add HitFromSpike