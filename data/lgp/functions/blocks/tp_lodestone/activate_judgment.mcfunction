
scoreboard players set @s lgp.tp_lodestone.activatedSuccess 1

    #探测四个物品展示框是否为紫水晶碎片
    execute as @e[tag=tp_lodestone.itemFrame.1] unless data entity @s Item{id:"minecraft:amethyst_shard"} run scoreboard players set @s lgp.tp_lodestone.activatedSuccess 0
    execute as @e[tag=tp_lodestone.itemFrame.2] unless data entity @s Item{id:"minecraft:amethyst_shard"} run scoreboard players set @s lgp.tp_lodestone.activatedSuccess 0
    execute as @e[tag=tp_lodestone.itemFrame.3] unless data entity @s Item{id:"minecraft:amethyst_shard"} run scoreboard players set @s lgp.tp_lodestone.activatedSuccess 0
    execute as @e[tag=tp_lodestone.itemFrame.4] unless data entity @s Item{id:"minecraft:amethyst_shard"} run scoreboard players set @s lgp.tp_lodestone.activatedSuccess 0
