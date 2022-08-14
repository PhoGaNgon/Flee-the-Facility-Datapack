scoreboard players operation .return Sneak = @s ghost_sid
execute as @e[type=armor_stand, tag=Crawl] if score @s ghost_sid = .return Sneak run tp ~ ~-20 ~
