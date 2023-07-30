#declare tag lgp.tp_lodestone.root
#declare tag lgp.tp_lodestone.targetText
#declare tag lgp.tp_lodestone.currentText
#declare tag lgp.tp_lodestone.accessory
#declare tag lgp.tp_lodestone.itemFrame.all
#declare tag lgp.tp_lodestone.itemFrame.1
#declare tag lgp.tp_lodestone.itemFrame.2
#declare tag lgp.tp_lodestone.itemFrame.3
#declare tag lgp.tp_lodestone.itemFrame.4
#declare storage lgp:blocks/tp_lodestone

#declare tag lgp.tp_lodestone.init
#declare tag lgp.tp_lodestone.leftClick
#declare tag lgp.tp_lodestone.rightClick
#declare tag lgp.tp_lodestone.notActivate
#declare score_holder #lgp.tp_lodestone.current_place_index
#declare score_holder #lgp.tp_lodestone.max_count

#放置磁石
    setblock ~ ~ ~ minecraft:lodestone
    execute positioned ~ ~1 ~ summon minecraft:interaction run function lgp:blocks/tp_lodestone/obj/root/init
    execute positioned ~ ~1 ~ summon minecraft:text_display run function lgp:blocks/tp_lodestone/obj/current_text/init
    execute positioned ~ ~1.25 ~ summon minecraft:text_display run function lgp:blocks/tp_lodestone/obj/target_text/init
    #forceload add ~ ~

#增加列表下标
    scoreboard players add #lgp.tp_lodestone.current_place_index lgp.int 1
    
#生成物品展示框
    summon minecraft:item_frame ~1 ~ ~ {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:5,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.1","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}
    summon minecraft:item_frame ~-1 ~ ~ {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:4,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.2","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}
    summon minecraft:item_frame ~ ~ ~1 {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:3,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.3","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}
    summon minecraft:item_frame ~ ~ ~-1 {Item:{id:"minecraft:air",Count:1b},ItemRotation:7,Facing:2,Invisible:1b,Invulnerable:1b,Tags:["lgp.tp_lodestone.itemFrame.4","lgp.tp_lodestone.itemFrame.all","lgp.tp_lodestone.accessory"]}

#效果
    #playsound minecraft:entity.ender_eye.death voice @a ~ ~ ~ 5 0.4 0
    playsound minecraft:block.amethyst_block.place voice @a ~ ~ ~ 1 0 0
    playsound minecraft:block.lodestone.place block @a ~ ~ ~ 1 0 1
    particle minecraft:reverse_portal ~ ~ ~ 0.6 0.5 0.6 1 300 force @a
    
#end
tag @s add lgp.kill
