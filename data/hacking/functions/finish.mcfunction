summon firework_rocket ~ ~2 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532,15435844],FadeColors:[I;1973019]}],Flight:1}}}}
playsound minecraft:block.end_portal.spawn master @a[distance=..4, team=Hiders] ~ ~ ~ 0.5
setblock ~ ~ ~ minecraft:emerald_block
scoreboard players add count stationsHacked 1