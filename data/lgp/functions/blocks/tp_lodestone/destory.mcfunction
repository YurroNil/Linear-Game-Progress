#传送磁石被破坏
scoreboard players operation #input lgp.int = @s lgp.tp_lodestone.index 
execute as 00000001-000-0002-000-000300000004 run function lgp:blocks/tp_lodestone/cursor/delete_index

execute store result storage lgp:blocks/tp_lodestone input.idx int 1 run scoreboard players get @s lgp.tp_lodestone.index
function lgp:blocks/tp_lodestone/data/remove with storage lgp:blocks/tp_lodestone input

kill @e[tag=lgp.tp_lodestone.accessory,distance=..1]

summon item ~ ~-0.5 ~ {CustomNameVisible:1b,Motion:[0.0d,0.3d,0.0d],Item:{id:"minecraft:ender_pearl",Count:2b}}
summon item ~ ~-0.5 ~ {CustomNameVisible:1b,Motion:[0.0d,0.3d,0.0d],Item:{id:"minecraft:amethyst_block",Count:2b}}

playsound minecraft:entity.ender_eye.death voice @a ~ ~ ~ 0.3 0.4 0
particle flame ~ ~ ~ 0.1 0.1 0.1 0 1 force @a

tag @s add lgp.kill