#计分板
    #world(世界)
        scoreboard objectives add lgp.world dummy
        scoreboard objectives add lgp.worldProcess dummy

    #计算
        function lgp:scoreboard_constants
        scoreboard objectives add lgp.PosX dummy
        scoreboard objectives add lgp.PosY dummy
        scoreboard objectives add lgp.PosZ dummy

    #events(事件)
        scoreboard objectives add lgp.raiders dummy

    #Entities(生物)

        #mob_modifiy(生物)
            #村民
                scoreboard objectives add lgp.villagerData dummy
                scoreboard objectives add lgp.villagerLevel dummy
                
            #怪物装备
                scoreboard objectives add lgp.equip.rec dummy
                scoreboard objectives add lgp.equip.slotIndex dummy
                scoreboard objectives add lgp.equip.aecDuration dummy
    #玩家
    scoreboard objectives add player.air air
    scoreboard objectives add player.hunger food
    scoreboard objectives add player.badOmen dummy

    #items(物品)
        #雷达
            scoreboard objectives add lgp.radar dummy
            scoreboard objectives add lgp.radarMode dummy
            scoreboard objectives add lgp.radar.rightClick dummy

        #末影图腾
        scoreboard objectives add lgp.enderTotem_level dummy


    #blocks(方块)
        scoreboard objectives add lgp.tp_lodestone dummy
        scoreboard objectives add lgp.tp_lodestone.activatedSuccess dummy
        scoreboard objectives add lgp.tp_lodestone.rightClick dummy
        scoreboard objectives add lgp.tp_lodestone.leftClick dummy
        scoreboard objectives add lgp.tp_lodestone.index dummy
        scoreboard objectives add lgp.tp_lodestone.time dummy

    #locations(位置)
        scoreboard objectives add lgp.allow_entherTheNether dummy

    #plot(剧情)
        scoreboard objectives add lgp.plot dummy

#游戏规则
    gamerule commandBlockOutput false
    #gamerule universalAnger false
    #gamerule reducedDebugInfo true
    #difficulty hard
 
    #如果加载forge则需要禁用ForgeAPI的数据包，否则原版数据包会被forge数据包覆盖，LGP数据包无法更改原版数据包的战利品表、配方、结构...等等。
    datapack disable "mod:forge"

#数据存储
    function lgp:blocks/tp_lodestone/load