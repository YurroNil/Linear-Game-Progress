#"开始袭击"进度检测
    execute if score inRaiders lgp.raiders matches 1 run advancement grant @a only lgp:chapter_1/raid_begins

#获取林地府邸地图进度
    execute if entity @a[scores={lgp.worldProcess=3..},nbt={Inventory:[{id:"minecraft:filled_map",tag:{display:{Name:'{"translate":"filled_map.mansion"}'}}}]}] run advancement grant @a only lgp:chapter_1/get_mansionmap

#解锁第二章
    execute if entity @a[scores={lgp.worldProcess=5..}] run advancement grant @a only lgp:chapter_1/end
    execute if entity @a[scores={lgp.worldProcess=5..}] run advancement grant @a only lgp:chapter_2/root
    
#设置进程分数
    scoreboard players set @a[scores={lgp.worldProcess=1},advancements={lgp:chapter_1/root=true}] lgp.worldProcess 2
    scoreboard players set @a[scores={lgp.worldProcess=..2},advancements={lgp:chapter_1/hero_of_the_village=true}] lgp.worldProcess 3
    scoreboard players set @a[scores={lgp.worldProcess=..3},advancements={lgp:chapter_1/get_mansionmap=true}] lgp.worldProcess 4
    scoreboard players set @a[scores={lgp.worldProcess=..4},advancements={lgp:chapter_1/kill_the_illusioner=true}] lgp.worldProcess 5

