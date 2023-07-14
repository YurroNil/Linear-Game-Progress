#合成
    execute as @e[type=item,nbt={Item:{id:"minecraft:potion",tag:{lgpTags:"mysterious_potion"}}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:tadpole_bucket"}},distance=..0.4] if entity @e[type=item,nbt={Item:{id:"minecraft:slime_ball",tag:{lgpTags:"mysterious_gel"}}},distance=..0.4] run function lgp:items/horn_coral/summon_items

