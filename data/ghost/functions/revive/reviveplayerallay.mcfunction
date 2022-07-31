effect give @s invisibility 999999 1 true

# Break lead
execute if entity @s[tag=leashed] run summon armor_stand ~ ~15 ~ {Tags:["leashBreaker"]}
execute if entity @s[tag=leashed] run data modify entity @s Leash set from entity @e[type=armor_stand, tag=leashBreaker, limit=1]
schedule function ghost:cryochamber/killleashbreaker 1t