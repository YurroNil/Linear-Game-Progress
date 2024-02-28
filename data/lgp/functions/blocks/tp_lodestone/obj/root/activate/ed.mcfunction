#玩家站在磁石上等待传送
    execute unless data entity @e[tag=lgp.tp_lodestone.targetText,sort=nearest,limit=1,distance=..1] {text:'{"text":""}'} as @p[distance=..0.5] at @s run function lgp:blocks/tp_lodestone/obj/player/waiting

#效果
    particle minecraft:witch ~ ~-1 ~ 0.1 0.1 0.1 0.1 1
