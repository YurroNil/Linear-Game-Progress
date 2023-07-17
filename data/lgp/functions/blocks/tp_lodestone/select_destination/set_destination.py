import os

path = os.getcwd()
file = open(r"D:\MC\.minecraft\saves\MCM数据包开发\datapacks\Linear-Game-Progress\data\lgp\functions\blocks\tp_lodestone\set_destination.mcfunction", mode = "w+", encoding="utf-8")

get_text = '''
# 按照索引穷举列表中的对象\n
'''
file.write(get_text)

for i in range(0, 16):
    command = "\texecute if score @s lgp.tp_lodestone.index matches {0} run data modify entity @e[type=text_display,limit=1,sort=nearest] text set from storage lgp:blocks/tp_lodestone destination_list[{0}].text\n".format(i)
    file.write(command)

file.close()
    