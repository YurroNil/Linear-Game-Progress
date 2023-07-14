
kill @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}},distance=..0.4]
kill @e[type=item,nbt={Item:{id:"minecraft:honey_block"}},distance=..0.4]
kill @e[type=item,nbt={Item:{id:"minecraft:honeycomb_block"}},distance=..0.4]
kill @e[type=item,nbt={Item:{id:"minecraft:melon"}},distance=..0.4]
kill @e[type=item,nbt={Item:{id:"minecraft:milk_bucket"}},distance=..0.4]

particle cloud ~ ~ ~ 0.1 0.1 0.1 0 10 force @a
summon item ~ ~ ~ {CustomName:'{"text":"宝宝奶昔"}',CustomNameVisible:1b,Motion:[0.0d,0.3d,0.0d],Item:{id:"minecraft:milk_bucket",Count:1b,tag:{display:{Name:'{"text":"宝宝奶昔","italic":false}',Lore:['{"text":"熊猫喜欢这个.","color":"#ADFF2F","italic":false,"bold":true}']},lgpTags:"baby_milkshake"}}}

kill @s
