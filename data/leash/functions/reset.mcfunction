# Reset scoreboard values
scoreboard players set @a deathCount 0
scoreboard players set @a deathTimer 0
scoreboard players set @a freezeTimer 0

kill @e[type=allay, tag=ghost]
tag @a remove spectating
tag @a remove frozen
tag @a remove leashed
tag @a remove leash
tag @a[team=Hiders] add leash
kill @e[type=skeleton, tag=highlighter]

# Player specific conditions
execute if entity @p[name="PhoGaNgon", tag=leash] run summon minecraft:allay ~ ~ ~ {CustomName:'"PhoGaNgon"', CustomNameVisible:true, Team:Hiders, NoAI:1, Invulnerable:1, Silent:1, PersistenceRequired:1, Tags:["ghost"], ActiveEffects:[{Id:14, Duration:999999, ShowParticles:0b}]}
execute if entity @p[name="Baconking26", tag=leash] run summon minecraft:allay ~ ~ ~ {CustomName:'"Baconking26"', CustomNameVisible:true, Team:Hiders, NoAI:1, Invulnerable:1, Silent:1, PersistenceRequired:1, Tags:["ghost"], ActiveEffects:[{Id:14, Duration:999999, ShowParticles:0b}]}
execute if entity @p[name="JBEmeraldMC", tag=leash] run summon minecraft:allay ~ ~ ~ {CustomName:'"JBEmeraldMC"', CustomNameVisible:true, Team:Hiders, NoAI:1, Invulnerable:1, Silent:1, PersistenceRequired:1, Tags:["ghost"], ActiveEffects:[{Id:14, Duration:999999, ShowParticles:0b}]}
execute if entity @p[name="INSERTNAME1", tag=leash] run summon minecraft:allay ~ ~ ~ {CustomName:'"INSERTNAME1"', CustomNameVisible:true, Team:Hiders, NoAI:1, Invulnerable:1, Silent:1, PersistenceRequired:1, Tags:["ghost"], ActiveEffects:[{Id:14, Duration:999999, ShowParticles:0b}]}
execute if entity @p[name="INSERTNAME2", tag=leash] run summon minecraft:allay ~ ~ ~ {CustomName:'"INSERTNAME2"', CustomNameVisible:true, Team:Hiders, NoAI:1, Invulnerable:1, Silent:1, PersistenceRequired:1, Tags:["ghost"], ActiveEffects:[{Id:14, Duration:999999, ShowParticles:0b}]}
