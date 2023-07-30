scoreboard players add @s lgp.tp_lodestone.index 1
execute if score @s lgp.tp_lodestone.index >= #lgp.tp_lodestone.max_count lgp.int run scoreboard players set @s lgp.tp_lodestone.index 0

function lgp:blocks/tp_lodestone/obj/target_text/set_text