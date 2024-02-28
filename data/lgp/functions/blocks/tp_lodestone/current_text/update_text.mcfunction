#获取数据对象
function lgp:blocks/tp_lodestone/data/get with storage lgp:blocks/tp_lodestone input

#更新数据对象
data modify storage lgp:blocks/tp_lodestone output.obj.current_text set from storage lgp:player input.SelectedItem.tag.display.Name

data modify storage lgp:blocks/tp_lodestone input.obj set from storage lgp:blocks/tp_lodestone output.obj
function lgp:blocks/tp_lodestone/data/set with storage lgp:blocks/tp_lodestone input

#更新当前地点文字
data modify entity @s text set from storage lgp:blocks/tp_lodestone input.obj.current_text
