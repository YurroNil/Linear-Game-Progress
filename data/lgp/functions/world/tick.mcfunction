
execute store result score timeTick lgp.world run time query daytime
execute if score timeTick lgp.world matches 1 run scoreboard players add day lgp.world 1
execute if score level lgp.world matches 2.. if score timeTick lgp.world matches 1 run scoreboard players add perDay lgp.world 1

##世界等级2开始，每20天增加1级的世界等级
    execute if score level lgp.world matches 2..3 if score perDay lgp.world matches 20.. run scoreboard players add level lgp.world 1
    execute if score level lgp.world matches 2.. if score perDay lgp.world matches 20.. run scoreboard players set perDay lgp.world 0
