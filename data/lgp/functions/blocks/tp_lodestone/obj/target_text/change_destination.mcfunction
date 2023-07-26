scoreboard players add @s lgp.tp_lodestone.index 1
execute if score @s lgp.tp_lodestone.index >= #lgp.tp_lodestone.max_count lgp.int run scoreboard players set @s lgp.tp_lodestone.index 0

tellraw @a [{"score":{"name": "@s","objective": "lgp.tp_lodestone.index"}}]

function lgp:blocks/tp_lodestone/obj/target_text/set_text