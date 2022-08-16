# Healing mechanic
# Item: apple

# Detect healer
execute as @a[team=Hiders, tag=!onHealCooldown, nbt={SelectedItem:{id:"minecraft:apple"}}] at @s if entity @p[team=Hiders, distance=.01..2, scores={Health=..19}] run tag @s add healer
execute as @a[tag=healer, tag=!onHealCooldown] at @s run function useitem:appleheal/healer
execute as @a[tag=onHealCooldown] run function useitem:appleheal/healcooldown

# Heal the wounded player
execute as @a[tag=healed] run effect give @s regeneration 1 255 true
execute as @a[tag=healed, scores={Health=..19}, nbt={ActiveEffects:[{Id:10, Amplifier: -1b}]}] at @s run playsound entity.item.pickup master @s
execute as @a[tag=healed, scores={Health=20..}] run effect clear @s regeneration
execute as @a[tag=healed, scores={Health=20..}] run tag @s remove healed

