# from
#define function lgp:blocks/tp_lodestone/player/shift

scoreboard players set @s lgp.tp_lodestone.tp_timer 0

execute store result storage lgp:blocks/tp_lodestone input.idx int 1 run scoreboard players get @e[distance=..1,limit=1,tag=lgp.tp_lodestone.root] lgp.tp_lodestone.index

function lgp:blocks/tp_lodestone/data/get with storage lgp:blocks/tp_lodestone input
execute unless data storage lgp:blocks/tp_lodestone output.obj.dest_pos run return 0

data modify storage lgp:player input.pos.x set from storage lgp:blocks/tp_lodestone output.obj.dest_pos[0]
data modify storage lgp:player input.pos.y set from storage lgp:blocks/tp_lodestone output.obj.dest_pos[1]
data modify storage lgp:player input.pos.z set from storage lgp:blocks/tp_lodestone output.obj.dest_pos[2]
function lgp:entities/player_modify/position with storage lgp:player input.pos

execute at @s run particle minecraft:witch ~ ~ ~ 0.1 0.5 0.1 0.5 100
playsound minecraft:entity.enderman.teleport hostile @s
