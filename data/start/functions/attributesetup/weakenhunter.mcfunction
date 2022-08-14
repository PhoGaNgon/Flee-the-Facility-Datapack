attribute @s generic.attack_damage base set 0
scoreboard players set @s DamageDealt 0
effect give @s slowness 2 3 true
tag @s add AttackCooldown

schedule function start:attributesetup/returndamage 2s
