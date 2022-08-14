summon armor_stand ~ ~-10 ~ {NoGravity:1, Invulnerable:1, Invisible:1, Tags:["Crawl", "CrawlInit"], Passengers:[{id:"minecraft:shulker",PersistenceRequired:1, Invulnerable:1, NoAI:1, Tags:["Crawl"], ActiveEffects:[{Id:14, Duration:999999, ShowParticles:0b}]}]}
scoreboard players operation @e[type=armor_stand, tag=CrawlInit] ghost_sid = @s ghost_sid
tag @e[type=armor_stand, tag=CrawlInit] remove CrawlInit
