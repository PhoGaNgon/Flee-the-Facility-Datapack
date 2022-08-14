# Warden sound
execute if score count MonsterSelect matches 1 as @p[tag=AttackCooldown] at @s run playsound entity.warden.tendril_clicks master @s ~ ~ ~ 1 1
# Golem sound
execute if score count MonsterSelect matches 2 as @p[tag=AttackCooldown] at @s run playsound entity.iron_golem.repair master @s ~ ~ ~ 0.7 0.8
# Enderman sound
execute if score count MonsterSelect matches 3 as @p[tag=AttackCooldown] at @s run playsound entity.enderman.ambient master @s ~ ~ ~ 1 0.8
attribute @p[tag=AttackCooldown] generic.attack_damage base set 10
tag @a[tag=AttackCooldown] remove AttackCooldown

