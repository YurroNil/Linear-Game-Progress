scoreboard players set @s lgp.tp_lodestone.activatedSuccess 1

#探测四个物品展示框是否为紫水晶碎片
    execute align xyz positioned ~0.5 ~-0.5 ~0.5 if entity @e[tag=lgp.tp_lodestone.itemFrame.all,limit=1,distance=..1.5,sort=nearest] unless data entity @s Item{id:"minecraft:amethyst_shard"} run scoreboard players set @s lgp.tp_lodestone.activatedSuccess 0
    

