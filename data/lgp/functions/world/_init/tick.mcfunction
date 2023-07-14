#找到安全区域
    #第一部分-检测是否处于森林地形
    execute unless score _worldInitTick lgp.world matches 5.. run scoreboard players add _worldInitTick lgp.world 1
    execute if score _worldInitTick lgp.world matches 3 run function lgp:world/_init/summon_ams
    execute if score _worldInitTick lgp.world matches 5 run function lgp:world/_init/seeker_loop
    
    #第二部分-如果是
    execute if score _worldInitTick lgp.world matches 10.. as @e[tag=lgp.biomeSeeker.root] at @s run function lgp:world/_init/is_safe_biome

    #结束
    execute if score _worldInitTick lgp.world matches 20.. run scoreboard players set _worldInitTick lgp.world 19
