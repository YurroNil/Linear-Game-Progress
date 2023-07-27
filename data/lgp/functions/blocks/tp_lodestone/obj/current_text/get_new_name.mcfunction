#获取命名牌名字到当前实体的text路径上
    data modify entity @s text set from entity @p[tag=lgp.tp_lodestone.player.try_change_current_text,distance=..7] SelectedItem.tag.display.Name

#修改列表中相应元素的text内容
    function lgp:blocks/tp_lodestone/obj/current_text/set_list_text


