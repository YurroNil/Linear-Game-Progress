execute if block ~ ~ ~ large_amethyst_bud[facing=north] run setblock ~ ~ ~ amethyst_cluster[facing=north]
execute if block ~ ~ ~ medium_amethyst_bud[facing=north] run setblock ~ ~ ~ large_amethyst_bud[facing=north]
execute if block ~ ~ ~ small_amethyst_bud[facing=north] run setblock ~ ~ ~ medium_amethyst_bud[facing=north]
execute if block ~ ~ ~ air run setblock ~ ~ ~ small_amethyst_bud[facing=north]

playsound minecraft:block.amethyst_cluster.place block @a[distance=..16] ~ ~ ~ 1 1

scoreboard players add @s lgp.tp_lodestone.power 1
