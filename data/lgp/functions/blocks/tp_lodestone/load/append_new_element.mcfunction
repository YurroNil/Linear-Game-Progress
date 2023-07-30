data modify storage lgp:blocks/tp_lodestone destination_list append value {pos:[], text:''}

scoreboard players add #lgp.tmp lgp.int 1
execute if score #lgp.tmp lgp.int < #lgp.tp_lodestone.max_count lgp.int run function lgp:blocks/tp_lodestone/load/append_new_element