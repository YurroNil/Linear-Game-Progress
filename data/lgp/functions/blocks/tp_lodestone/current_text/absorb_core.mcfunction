#获取数据对象
function lgp:blocks/tp_lodestone/data/get with storage lgp:blocks/tp_lodestone input

#更新数据对象
data modify storage lgp:blocks/tp_lodestone output.obj.dest_pos set from storage lgp:player input.SelectedItem.tag.dest_pos
data modify storage lgp:blocks/tp_lodestone output.obj.dest_text set from storage lgp:player input.SelectedItem.tag.dest_text 

data modify storage lgp:blocks/tp_lodestone input.obj set from storage lgp:blocks/tp_lodestone output.obj
function lgp:blocks/tp_lodestone/data/set with storage lgp:blocks/tp_lodestone input

#拼接当前文字和目的地文字
data modify storage lgp:blocks/tp_lodestone input.str1 set from storage lgp:blocks/tp_lodestone output.obj.current_text
data modify storage lgp:blocks/tp_lodestone input.str2 set value "TO"
data modify storage lgp:blocks/tp_lodestone input.str3 set from storage lgp:blocks/tp_lodestone output.obj.dest_text
function lgp:blocks/tp_lodestone/data/concat_str3 with storage lgp:blocks/tp_lodestone input

#更新当前目的地文字为拼接后文字
data modify entity @s text set from storage lgp:blocks/tp_lodestone output.arg1
