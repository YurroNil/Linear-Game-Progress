summon bat ~ ~ ~ {Tags:["lgp.tp_lodestone.bearer"]}
ride @s mount @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..0.1]

scoreboard players set @s lgp.tp_lodestone.time 0
scoreboard players operation @s lgp.tp_lodestone.index = @e[tag=lgp.tp_lodestone.targetText,limit=1,distance=..1,sort=nearest] lgp.tp_lodestone.index 

tag @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] add lgp.kill

execute if score @s lgp.tp_lodestone.index matches 0 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[0].pos
execute if score @s lgp.tp_lodestone.index matches 1 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[1].pos
execute if score @s lgp.tp_lodestone.index matches 2 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[2].pos
execute if score @s lgp.tp_lodestone.index matches 3 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[3].pos
execute if score @s lgp.tp_lodestone.index matches 4 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[4].pos
execute if score @s lgp.tp_lodestone.index matches 5 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[5].pos
execute if score @s lgp.tp_lodestone.index matches 6 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[6].pos
execute if score @s lgp.tp_lodestone.index matches 7 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[7].pos
execute if score @s lgp.tp_lodestone.index matches 8 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[8].pos
execute if score @s lgp.tp_lodestone.index matches 9 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[9].pos
execute if score @s lgp.tp_lodestone.index matches 10 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[10].pos
execute if score @s lgp.tp_lodestone.index matches 11 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[11].pos
execute if score @s lgp.tp_lodestone.index matches 12 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[12].pos
execute if score @s lgp.tp_lodestone.index matches 13 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[13].pos
execute if score @s lgp.tp_lodestone.index matches 14 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[14].pos
execute if score @s lgp.tp_lodestone.index matches 15 run data modify entity @e[tag=lgp.tp_lodestone.bearer,sort=nearest,limit=1,distance=..1] Pos set from storage lgp:blocks/tp_lodestone destination_list[15].pos

playsound minecraft:entity.ender_eye.launch voice @a ~ ~ ~ 2 0 1
particle minecraft:portal ~ ~ ~ 0 0.5 0 0.1 500

#tellraw @s [{"text":"传送完成","color": "green"}]
