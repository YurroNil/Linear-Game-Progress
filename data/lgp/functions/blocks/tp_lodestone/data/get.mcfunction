#获取index为idx的传送磁石对象
data remove storage lgp:blocks/tp_lodestone output.obj
$data modify storage lgp:blocks/tp_lodestone output.obj set from storage lgp:blocks/tp_lodestone destination_list[{index:$(idx)}]
