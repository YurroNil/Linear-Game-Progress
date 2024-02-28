#传送磁石进行充能
kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:amethyst_shard"}}]

playsound minecraft:block.amethyst_block.chime block @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:dust_color_transition 1 0 1 1 0.482 0.408 0.933 ~ ~0.75 ~ 0.2 0.1 0.2 0.1 20

#生长不同面的水晶
scoreboard players set #tmp lgp.tp_lodestone.var 0
execute store result score #tmp lgp.tp_lodestone.var run random value 1..4
execute if score #tmp lgp.tp_lodestone.var matches 1 positioned ~ ~ ~1 unless block ~ ~ ~ amethyst_cluster run function lgp:blocks/tp_lodestone/charge/2/south
execute if score #tmp lgp.tp_lodestone.var matches 2 positioned ~ ~ ~-1 unless block ~ ~ ~ amethyst_cluster run function lgp:blocks/tp_lodestone/charge/2/north
execute if score #tmp lgp.tp_lodestone.var matches 3 positioned ~1 ~ ~ unless block ~ ~ ~ amethyst_cluster run function lgp:blocks/tp_lodestone/charge/2/east
execute if score #tmp lgp.tp_lodestone.var matches 4 positioned ~-1 ~ ~ unless block ~ ~ ~ amethyst_cluster run function lgp:blocks/tp_lodestone/charge/2/west
