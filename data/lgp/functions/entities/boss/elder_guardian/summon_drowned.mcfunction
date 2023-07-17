summon drowned ~ ~ ~ {Tags:["lgp.drowned.summoned"],HandItems:[{id:"minecraft:trident",Count:1b}]}
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~ ~ 1000 0 1
playsound minecraft:entity.elder_guardian.curse voice @a ~ ~ ~ 1000 2 1
particle minecraft:bubble_pop ~ ~ ~ 2 2 2 1 500 force @a
particle minecraft:bubble ~ ~ ~ 2 2 2 5 1000 force @a
particle minecraft:fishing ~ ~ ~ 2 2 2 0.1 500 force @a
scoreboard players reset @s lgp.elderGuardian
