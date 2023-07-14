#合成
    execute as @e[type=item,nbt={Item:{id:"minecraft:pumpkin_pie"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}},distance=..0.4] if entity @e[type=item,nbt={Item:{id:"minecraft:honey_block"}},distance=..0.4] if entity @e[type=item,nbt={Item:{id:"minecraft:honeycomb_block"}},distance=..0.4] if entity @e[type=item,nbt={Item:{id:"minecraft:melon"}},distance=..0.4] if entity @e[type=item,nbt={Item:{id:"minecraft:milk_bucket"}},distance=..0.4] run function lgp:items/milkshake/summon_items

