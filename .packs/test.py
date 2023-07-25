from datapack import *
from mc_nbt import * 
import os

my_test_datapack = Datapack("lgp")

#my_test_datapack.infor()

test1 = {
    Count: 1
}

give(Selector("@s"), MinecraftItems.STONE, test1)

Datapack.out_mcfunction(my_test_datapack, "test111.mcfunction")

class Block:
    def __init__(self) -> None:
        self.name


'''
tp_player = Entity(Selector.AT_P)
for i in range(0, 16):
    if (tp_player.if_score_matches("lgp.tp_lodestone.index", i)):
        tp_player.selector.set_limit(1).set_sort(Selector.nearest)
        tp_player.data_set("text", Storage(NAMESPACE + ':' + "blocks/tp_lodestone"), "destination_list[{0}]".format(i))
'''



