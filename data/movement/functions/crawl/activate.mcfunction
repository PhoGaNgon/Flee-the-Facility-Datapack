execute as @a[tag=Sneaking, scores={Sneak=0}] run tag @s remove Sneaking
execute as @a[team=Hiders, scores={Sneak=1..}, gamemode=!spectator] run tag @s add Sneaking
execute as @a[team=Hiders, tag=Sneaking] at @s run function movement:crawl/standtoplayer

execute as @a[team=Hiders, tag=!Sneaking] at @s run function movement:crawl/returnstand

execute as @a[scores={Sneak=1..}] run scoreboard players set @s Sneak 0