# Free current prisoner
tag @s remove frozen
execute at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;2437522,2651799,15790320],FadeColors:[I;2437522,2651799,15790320]}]}}}}
tellraw @a [{"text":"","color":"green","extra":[{"selector":"@s"}]},{"text":" has been released!"}]
effect clear @s
tp @s ~ ~ ~
tag @e[type=skeleton, tag=cryochamber, tag=locked, distance=..3, limit=1] remove locked
