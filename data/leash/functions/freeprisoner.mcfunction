# Free current prisoner
execute at @e[type=skeleton, tag=highlighter, sort=nearest, limit=1] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;2437522,2651799,15790320],FadeColors:[I;2437522,2651799,15790320]}]}}}}
execute as @p[distance=..3, tag=frozen] run tellraw @a [{"text":"","color":"green","extra":[{"selector":"@s"}]},{"text":" has been released!"}]
effect clear @p[distance=..3, tag=frozen]
execute as @p[distance=..3, tag=frozen] run tp @s ~ ~ ~
tag @p[distance=..3, tag=frozen] remove frozen
tag @e[type=skeleton, distance=..3, tag=highlighter] add debounce
