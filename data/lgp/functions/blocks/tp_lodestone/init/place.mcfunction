#declare tag lgp.tp_lodestone.root
#declare tag lgp.tp_lodestone.text
#declare tag lgp.tp_lodestone.accessory
#declare tag lgp.tp_lodestone.currentPlace
#declare tag lgp.tp_lodestone.currentPlace
#declare tag lgp.tp_lodestone.itemFrame.all
#declare tag lgp.tp_lodestone.itemFrame.1
#declare tag lgp.tp_lodestone.itemFrame.2
#declare tag lgp.tp_lodestone.itemFrame.3
#declare tag lgp.tp_lodestone.itemFrame.4

#放置磁石
    setblock ~ ~ ~ minecraft:lodestone
    summon minecraft:interaction ~ ~1 ~ {Tags:["lgp.tp_lodestone.root"],interaction:{player:[I; 0, 0, 0, 0], timestamp: 0L},attack:{player:[I; 0, 0, 0, 0], timestamp: 0L}}
    summon minecraft:text_display ~ ~1 ~ {Tags:["lgp.tp_lodestone.text","lgp.tp_lodestone.accessory"],billboard:"center",width:0.5f}
    summon minecraft:text_display ~ ~2 ~ {Tags:["lgp.tp_lodestone.currentPlace","lgp.tp_lodestone.accessory"],billboard:"center",width:1.5f}
    #forceload add ~ ~
    
    scoreboard players add #lgp.tp_lodestone.current_place_index lgp.int 1

#计分板变量赋初值
    execute as @e[tag=lgp.tp_lodestone.root,limit=1,sort=nearest,distance=..1] run function lgp:blocks/tp_lodestone/init/scoreboard
    
#生成物品展示框
    summon minecraft:item_frame ~1 ~ ~ {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:5,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.1","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}
    summon minecraft:item_frame ~-1 ~ ~ {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:4,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.2","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}
    summon minecraft:item_frame ~ ~ ~1 {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:3,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.3","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}
    summon minecraft:item_frame ~ ~ ~-1 {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:2,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.4","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}

#效果
    playsound minecraft:entity.ender_eye.death voice @a ~ ~ ~ 5 0.4 0
    particle minecraft:reverse_portal ~ ~ ~ 0.6 0.5 0.6 1 300 force @a
    
#end
kill @s
