#未满足条件则不放置
    execute if function lgp:blocks/tp_lodestone/check/adjacent_tp_lodestone run return -1
    execute unless function lgp:blocks/tp_lodestone/check/count_in_range run return -2

#满足条件后放置
    setblock ~ ~ ~ minecraft:lodestone
    execute positioned ~ ~1 ~ summon minecraft:interaction run function lgp:blocks/tp_lodestone/root/init
    execute positioned ~ ~1 ~ summon minecraft:text_display run function lgp:blocks/tp_lodestone/current_text/init
    #execute positioned ~ ~1.25 ~ summon minecraft:text_display run function lgp:blocks/tp_lodestone/target_text/init

    # summon minecraft:item_frame ~1 ~ ~ {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:5,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.1","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}
    # summon minecraft:item_frame ~-1 ~ ~ {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:4,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.2","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}
    # summon minecraft:item_frame ~ ~ ~1 {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:3,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.3","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}
    # summon minecraft:item_frame ~ ~ ~-1 {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:2,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.4","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}

    #playsound minecraft:entity.ender_eye.death voice @a ~ ~ ~ 5 0.4 0
    playsound minecraft:block.amethyst_block.place voice @a[distance=..7] ~ ~ ~ 1 0 0
    playsound minecraft:block.lodestone.place block @a[distance=..7] ~ ~ ~ 1 0 1
    particle minecraft:reverse_portal ~ ~ ~ 0.6 0.5 0.6 1 300 force @a[distance=..7]

    execute as 00000001-000-0002-000-000300000004 at @s run function lgp:blocks/tp_lodestone/cursor/add_to_index

    return 1


