#获取目的地坐标到目的地实体上
execute summon minecart:bat run function lgp:blocks/tp_lodestone/timer/to_destination
#乘骑最近玩家到目的地实体
tp @s @e[tag=lgp.tp_lodestone.destination,limit=1,sort=nearest]
tp @e[tag=lgp.tp_lodestone.destination,limit=1,sort=nearest] ~ -1000 ~
kill @e[tag=lgp.tp_lodestone.destination,limit=1,sort=nearest]