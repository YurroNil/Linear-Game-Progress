scoreboard players remove #lgp.tp_lodestone.current_place_index lgp.int 1

function lgp:blocks/tp_lodestone/obj/root/remove_from_list

kill @e[tag=lgp.tp_lodestone.accessory,distance=..1]

#CustomName:'{"text":"末影珍珠"}'
summon item ~ ~-0.5 ~ {CustomNameVisible:1b,Motion:[0.0d,0.3d,0.0d],Item:{id:"minecraft:ender_pearl",Count:2b}}
#CustomName:'{"text":"紫水晶块"}'
summon item ~ ~-0.5 ~ {CustomNameVisible:1b,Motion:[0.0d,0.3d,0.0d],Item:{id:"minecraft:amethyst_block",Count:2b}}

playsound minecraft:entity.ender_eye.death voice @a ~ ~ ~ 0.3 0.4 0
particle flame ~ ~ ~ 0.1 0.1 0.1 0 1 force @a
#forceload remove ~ ~

tag @s add lgp.kill