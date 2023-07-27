scoreboard players set @s lgp.tp_lodestone.activatedSuccess 0

#探测四个物品展示框是否为紫水晶碎片
    execute positioned ~-0.5 ~-0.5 ~ if entity @e[tag=lgp.tp_lodestone.itemFrame.all,distance=..0.2,nbt={Item:{id:"minecraft:amethyst_shard"}}] run scoreboard players add @s lgp.tp_lodestone.activatedSuccess 1
    execute positioned ~0.5 ~-0.5 ~ if entity @e[tag=lgp.tp_lodestone.itemFrame.all,distance=..0.2,nbt={Item:{id:"minecraft:amethyst_shard"}}] run scoreboard players add @s lgp.tp_lodestone.activatedSuccess 1
    execute positioned ~ ~-0.5 ~0.5 if entity @e[tag=lgp.tp_lodestone.itemFrame.all,distance=..0.2,nbt={Item:{id:"minecraft:amethyst_shard"}}] run scoreboard players add @s lgp.tp_lodestone.activatedSuccess 1
    execute positioned ~ ~-0.5 ~-0.5 if entity @e[tag=lgp.tp_lodestone.itemFrame.all,distance=..0.2,nbt={Item:{id:"minecraft:amethyst_shard"}}] run scoreboard players add @s lgp.tp_lodestone.activatedSuccess 1

execute if score @s lgp.tp_lodestone.activatedSuccess matches 0..3 run tag @s add lgp.tp_lodestone.notActivate


