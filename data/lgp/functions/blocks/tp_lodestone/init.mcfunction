
#放置磁石
setblock ~ ~ ~ minecraft:lodestone

#生成物品展示框
    summon minecraft:item_frame ~1 ~ ~ {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:5,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.1","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}
    summon minecraft:item_frame ~-1 ~ ~ {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:4,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.2","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}
    summon minecraft:item_frame ~ ~ ~1 {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:3,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.3","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}
    summon minecraft:item_frame ~ ~ ~-1 {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:2,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.4","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}

#效果
    playsound minecraft:entity.ender_eye.death voice @a ~ ~ ~ 5 0.4 0
    particle minecraft:reverse_portal ~ ~ ~ 1 0.6 1 1 500 force @a
    

#end
tag @s remove lgp.tp_lodestone.rootInit