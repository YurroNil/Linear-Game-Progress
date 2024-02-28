#初始化列表
    execute unless data storage lgp:blocks/tp_lodestone destination_list run data merge storage lgp:blocks/tp_lodestone {destination_list:[]}

#初始化列表元素
    execute store result score #lgp.tmp lgp.int run data get storage lgp:blocks/tp_lodestone destination_list
    execute if score #lgp.tmp lgp.int matches 0 run function lgp:blocks/tp_lodestone/load/append_new_element