# from
#define function lgp:blocks/tp_lodestone/tick
#若达成破坏条件
execute unless block ~ ~-0.5 ~ minecraft:lodestone run function lgp:blocks/tp_lodestone/destory

#如果达成激活条件
execute unless entity @s[tag=lgp.tp_lodestone.activated] positioned ~ ~-0.5 ~ if function lgp:blocks/tp_lodestone/check/if_activated run function lgp:blocks/tp_lodestone/root/activate

#如果可以生成核心
execute if score @s lgp.tp_lodestone.power matches 16.. if entity @s[tag=lgp.tp_lodestone.activated] positioned ~ ~-0.5 ~ run function lgp:blocks/tp_lodestone/spawn_core

#如果达成取消激活条件
execute if entity @s[tag=lgp.tp_lodestone.activated] positioned ~ ~-0.5 ~ unless function lgp:blocks/tp_lodestone/check/if_activated run function lgp:blocks/tp_lodestone/root/cancel_activate