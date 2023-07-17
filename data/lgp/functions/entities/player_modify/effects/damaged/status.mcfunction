#更容易饿死
    execute as @a[tag=!player.operTags,scores={player.hunger=0}] run damage @s 10000.0 minecraft:starve

#更容易淹死
    execute as @a[tag=!player.operTags,scores={player.air=0}] run damage @s 10.0 minecraft:drown

