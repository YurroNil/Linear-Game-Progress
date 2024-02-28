#更新index为idx的传送磁石对象的地点文字
$data modify storage lgp:blocks/tp_lodestone destination_list[{index:$(idx)}].text set value $(arg1)
