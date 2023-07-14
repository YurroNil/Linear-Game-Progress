#玩家视角设置
    gamemode spectator @a[gamemode=!spectator]
    execute as @a at @e[tag=lgp.biomeSeeker.root] run tp @s ~ ~ ~ 0 -90
    #execute as @a run spectate @e[tag=lgp.biomeSeeker.root,limit=1] @s
    title @a title {"text": "正在寻找安全的世界出生点...","bold":true}
    title @a subtitle {"text": "这或许需要等待1~5分钟左右的时间.","color": "#DC143C","bold":true}
    title @a times 0 50 5

#如果生物群系符合条件
    execute at @e[tag=lgp.biomeSeeker.root] if biome ~ ~ ~ #lgp:is_safe_biome run function lgp:world/_init/success
    
#生物群系不符合条件移动AMS位置
    execute unless score _worldInitTick lgp.world matches 10.. as @e[tag=lgp.biomeSeeker.root] at @s run tp @s ~5 150 ~

