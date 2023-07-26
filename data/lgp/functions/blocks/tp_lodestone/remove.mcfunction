particle flame ~ ~ ~ 0.1 0.1 0.1 0 1 force @a
kill @e[tag=lgp.tp_lodestone.accessory,distance=..1]
summon item ~ ~ ~ {CustomName:'{"text":"末影珍珠"}',CustomNameVisible:1b,Motion:[0.0d,0.3d,0.0d],Item:{id:"minecraft:ender_pearl",Count:2b}}
summon item ~ ~ ~ {CustomName:'{"text":"紫水晶块"}',CustomNameVisible:1b,Motion:[0.0d,0.3d,0.0d],Item:{id:"minecraft:amethyst_block",Count:2b}}
playsound minecraft:block.beacon.deactivate voice @a ~ ~ ~ 10 0 0
#forceload remove ~ ~
scoreboard players remove #lgp.tp_lodestone.current_place_index lgp.int 1
tag @s add lgp.kill