kill @e[type=item,nbt={Item:{id:"minecraft:tadpole_bucket"}},distance=..0.4,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:slime_ball",tag:{lgpTags:"mysterious_gel"}}},distance=..0.4,limit=1]
particle cloud ~ ~ ~ 0.1 0.1 0.1 0 10 force @a
summon item ~ ~ ~ {CustomName:'{"text":"鹿角珊瑚"}',CustomNameVisible:1b,Motion:[0.0d,0.3d,0.0d],Item:{id:"minecraft:horn_coral",Count:2b}}

kill @s
