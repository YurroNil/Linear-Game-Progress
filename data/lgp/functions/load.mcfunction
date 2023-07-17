#计分板
    #世界
    scoreboard objectives add lgp.world dummy
    scoreboard objectives add lgp.worldProcess dummy

    #计算
    function lgp:scoreboard_constants
    scoreboard objectives add lgp.PosX dummy
    scoreboard objectives add lgp.PosY dummy
    scoreboard objectives add lgp.PosZ dummy

    #事件
    scoreboard objectives add lgp.raiders dummy

    #装备
    scoreboard objectives add lgp.equip.rec dummy
    scoreboard objectives add lgp.equip.slotIndex dummy
    scoreboard objectives add lgp.equip.aecDuration dummy

    #生物
    scoreboard objectives add lgp.villagerData dummy

    #物品
    scoreboard objectives add lgp.radar dummy
    scoreboard objectives add lgp.radarMode dummy
    scoreboard objectives add lgp.radar.rightClick dummy

    #方块
    scoreboard objectives add lgp.tp_lodestone.rightClick dummy
    scoreboard objectives add lgp.tp_lodestone.leftClick dummy
    scoreboard objectives add lgp.tp_lodestone.index dummy
    scoreboard objectives add lgp.tp_lodestone.time dummy

    #玩家
    scoreboard objectives add player.air air
    scoreboard objectives add player.hunger food
    scoreboard objectives add player.badOmen dummy

    #位置
    scoreboard objectives add lgp.allow_entherTheNether dummy

    #剧情
    scoreboard objectives add lgp.plot dummy

#游戏规则
gamerule commandBlockOutput false
gamerule universalAnger false
gamerule reducedDebugInfo true
difficulty hard
datapack disable "mod:forge"

