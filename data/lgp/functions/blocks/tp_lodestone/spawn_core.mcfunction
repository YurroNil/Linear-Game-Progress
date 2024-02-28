execute if block ~ ~ ~1 amethyst_cluster run fill ~ ~ ~1 ~ ~ ~1 air destroy
execute if block ~ ~ ~-1 amethyst_cluster run fill ~ ~ ~-1 ~ ~ ~-1 air destroy
execute if block ~1 ~ ~ amethyst_cluster run fill ~1 ~ ~ ~1 ~ ~ air destroy
execute if block ~-1 ~ ~ amethyst_cluster run fill ~-1 ~ ~ ~-1 ~ ~ air destroy

scoreboard players remove @s lgp.tp_lodestone.power 16

tag @s remove lgp.tp_lodestone.activated

data modify storage lgp:blocks/tp_lodestone output.dest_pos set from entity @s Pos
data modify storage lgp:blocks/tp_lodestone output.dest_text set from entity @e[distance=..1,limit=1,sort=nearest,tag=lgp.tp_lodestone.currentText] text

loot spawn ~ ~ ~ loot lgp:item/tp_core
