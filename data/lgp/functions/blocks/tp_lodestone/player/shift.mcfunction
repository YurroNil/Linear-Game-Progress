# from
#define function lgp:player/shift

scoreboard players add @s lgp.tp_lodestone.tp_timer 1

particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 0.1 1

execute if score @s lgp.tp_lodestone.tp_timer matches 40.. run function lgp:blocks/tp_lodestone/player/tp
