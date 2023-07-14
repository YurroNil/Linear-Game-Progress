import os

class Datapack:
    pack_format = 0
    minecraft_version = "1.20.1"
    datapack_version = "1.0"
    hover_text = ""
    namespace = ""
    block_namespace = ""
    block_path = []
    def create_pack_mcmeta():
        filepath = os.getcwd()
        print(filepath)
        file_path = filepath + "\\" + "pack.mcmeta" 
        print(file_path)
        file = open(file_path, "w")
        file.close()

'''
file = open(r"D:\MC\.minecraft\saves\MCM数据包开发\datapacks\Linear Game Progress\data\lgp\functions\load.mcfunction", "w+", encoding="utf-8")
str = file.read(100)
print(str)
'''





