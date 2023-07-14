execute as @a[nbt={Inventory:[{id:"minecraft:lava_bucket"}]},predicate=!lgp:player/can_carry_lava_bucket,tag=!player.operTags] at @s run function lgp:items/vanilla_modify/lava_bucket/setfire
