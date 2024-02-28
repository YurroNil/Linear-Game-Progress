execute if block ~ ~ ~ large_amethyst_bud[facing=south] run setblock ~ ~ ~ amethyst_cluster[facing=south]
execute if block ~ ~ ~ medium_amethyst_bud[facing=south] run setblock ~ ~ ~ large_amethyst_bud[facing=south]
execute if block ~ ~ ~ small_amethyst_bud[facing=south] run setblock ~ ~ ~ medium_amethyst_bud[facing=south]
execute if block ~ ~ ~ air run setblock ~ ~ ~ small_amethyst_bud[facing=south]

playsound minecraft:block.amethyst_cluster.place block @a[distance=..16] ~ ~ ~ 1 1

scoreboard players add @s lgp.tp_lodestone.power 1
