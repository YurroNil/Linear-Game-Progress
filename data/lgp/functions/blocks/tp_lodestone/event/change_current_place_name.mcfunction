    data modify entity @s text set from entity @p[tag=lgp.tp_lodestone.leftClick] SelectedItem.tag.display.Name
    tellraw @p[tag=lgp.tp_lodestone.leftClick] [{"text":"修改名称成功","color": "green"}]

#重置时间戳状态
    data modify entity @s attack.timestamp set value 0
