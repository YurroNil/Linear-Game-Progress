import os
import json
import sys

INT_MAX = sys.maxsize
INT_MIN = -sys.maxsize - 1 

class Datapack:
    'Minecraft数据包类'

    def __init__(
            self, 
            pack_format: int, # 数据包的数据版本
            minecraft_version: str, # 数据包作者的数据包开发所在的Minecraft游戏版本
            datapack_version: str, # 数据包作者根据开发进度自定义的开发版本
            namespace: str, # 命名空间
        ) -> None:
        self.pack_format = pack_format
        self.minecraft_version = minecraft_version
        self.datapack_version = datapack_version
        self.namespace = namespace

        self.auther_name = ""
        
    def set_hover_description(self, description: dict):
        self.description = description

    def create_pack_mcmeta(self) -> None:
        file_path = os.getcwd()
        print(file_path)
        #new_file_path = file_path + "\\" + "pack.mcmeta" 
        new_file_path = file_path + "\\" + "\\pack.mcmeta"
        print(new_file_path)
        create_file = open(new_file_path, "w", encoding="utf-8")
        all_text = r'''
{
    "pack": {
        "pack_format": 12,
        "description": {
            "text": {title},
            "extra": [
                {
                    "text": "数据包作者: "
                },
                {
                    "text": {auther_name},
                    "color": {auther_name_color}
                },
                {
                    "text": "版本: "
                },
                {
                    "text": {datapack_version},
                    "color": "#00CED1"
                }
            ]
        }
    },
    "filter": {
        "block": [
            {
                "namespace": "minecraft",
                "path": "advancements"
            }
        ]
    }
}
'''
        create_file.write(all_text.format(
            self.minecraft_version,
            self.datapack_version
            ))
        create_file.close()

t = Datapack(
    pack_format=12,
    minecraft_version="1.20.1",
    datapack_version="1.0",
    namespace="lgp"
)

t.create_pack_mcmeta()
'''
file = open(r"D:\\MC\.minecraft\saves\MCM数据包开发\datapacks\Linear Game Progress\data\lgp\functions\load.mcfunction", "w+", encoding="utf-8")
str = file.read(100)
print(str)
'''

# scoreboard objectives add dummy_obj dummy
# execute store result pos_x dummy_obj  = data get entity @target_entity1 Pos[0]
# execute store result pos_y dummy_obj = data get entity @target_entity1 Pos[1]
# execute store result pos_z dummy_obj = data get entity @target_entity1 Pos[2]

# execute store result pos_x dummy_obj -= data get entity @target_entity2 Pos[0]
# execute store result pos_y dummy_obj -= data get entity @target_entity2 Pos[1]
# execute store result pos_z dummy_obj -= data get entity @target_entity2 Pos[2]

# execute store result pos_x dummy_obj *= pos_x dummy_obj
# execute store result pos_y dummy_obj *= pos_y dummy_obj
# execute store result pos_z dummy_obj *= pos_z dummy_obj

# scoreboard players set result dummy_obj 0
# scoreboard players operation result dummy_obj += pos_x dummy_obj
# scoreboard players operation result dummy_obj += pos_y dummy_obj
# scoreboard players operation result dummy_obj += pos_z dummy_obj

# scoreboard plyaers operation sqrt_target dummy_obj = result dummy_obj
# function namespace:sqrt

class Scoreboard:
    """
    计分项类，用于创建一个计分项对象
    """
    criteriaList = ["dummy", "trigger", "deathCount", "playerKillCount","totalKillCount", "health", "xp", "level", "food", "air", "armor"]

    def __init__(self) -> None:
        self.criteria = None
        self.display_name = json.JSONDecoder
        self.score = 0

    def set_criteria(self, criteria: str = "dummy"):  
        """
        - 作用：\n
        设置判据类型 \n
        - 参数简介：\n
        type: 判据类型，也即准则 \n
        - 用法示例：\n
        原版命令
        ```mcfunction
        scoreboard objectives add test dummy '{"text": "hhh"}' \n
        ```
        可以通过以下方式实现 \n
        ```python
        Scoreboard test 
        test.set_type(dummy) 
        test.set_display_name('{"text": "hhh"}') 
        ```
        """
        flag = 0 # 标识当前typeList中是否有与type对应的类型字符串
        for t in Scoreboard.criteriaList: # 遍历搜索typeList是否有type类型
            if (criteria == t):
                flag = 1  
        if (flag == 1):  # 如果有就把当前Scoreboard对象的type设置为type类型    
            self.criteria = criteria

    # 这个JSONDecoder类型还没搞懂是啥意思
    def set_display_name(self, display_name: json.JSONDecoder):
        self.display_name = display_name

def scblize(objective: object, criteria: str, display_name: json.JSONDecoder, score: int) -> Scoreboard:
    objective = Scoreboard()
    objective.criteria = criteria
    objective.display_name = display_name
    objective.score = score
    return objective

class ErrorCommandArgument(Exception):
    def __init__(self, arg: object) -> None:
        self.arg = arg
    def __str__(self) -> str:
        return f"参数错误: {self.arg}"

class Selector:
    """
    目标选择器类，用于简单代表一个实体选择器
    """
    sortTypes = ["nearest", "furthest", "arbitrary", "random"]
    selectorVars = ["p", "r", "e", "a", "s"]
    selectorArgs = {
        "pos": (0, 0, 0), # 选择x y z对应的目标
        "distance": (INT_MIN, INT_MIN), # 选择distance = (lowerbound, upperbound)对应的目标
        "volume": (0, 0, 0), # 选择dx dy dz对应的目标
        "scores": [(, 0)], # 选择计分项分数对应的目标
        "tag": "", # 选择标签合适的目标
        "team": "", # 选择队伍合适的目标
        "sort": sortTypes[0], # 选择合适的目标
        "level": (0, 0), # 选择经验合适的目标
        "name": "",
        "x_rotation": "",
        "y_rotation": "",
        "nbt": 0,
        "advancements": ("", False),
        "predicate": "",
        "limit": 0
    }

    def __int__(self) -> None:
        self.var = "e"
        self.type = None
        self.x, self.y, self.z = Selector.selectorArgs["pos"]
        self.dx, self.dy = Selector.selectorArgs["volume"]

    def use(self,
            var = "e",
            pos = selectorArgs["pos"], # 变量类型要求为三元组，如何写？
            distance = selectorArgs["distance"],
            scores = selectorArgs["scores"]
            ) -> bool:
        """
        - 作用
        解析传入的目标选择器参数是否合法，合法则返回true
        """

class Entity:
    """
    实体类，用于简单代表一个实体
    """
    def __init__(self) -> None:
        self.scb_obj_list = [Scoreboard()] # 计分板计分项列表
    
    def find_scb_obj(self, scb_obj: Scoreboard) -> int:
        for i in range(len(self.scb_obj_list)):
            if (scb_obj == self.scb_obj_list[i]):
                return i
        return -1
    
    def set_scb_score(self, selector: Selector, scoreboard_objective: Scoreboard, score: int = 0):
        """
        - 作用 \n
        设置计分板计分对象 \n
        - 参数 \n
        scoreboard_objctive: 一个计分项 \n
        score: 要设置的分值 \n
        - 用法 \n
        原版命令
        ```mcfunction
        scoreboard players set @e[type=minecraft:pig] test 2
        ```
        可以使用如下方式进行实现 \n
        ```python
        Scoreboard test
        test.set_scb_score(use_selector(filter="all_entity", type="minecraft:pig"), test, 2)
        ```
        """
        scb_obj_index = self.find_scb_obj(scoreboard_objective)
        if (scb_obj_index == -1):
            raise ErrorCommandArgument(scoreboard_objective)
        else: 
            self.scb_obj_list[scb_obj_index].score = score


        
    


