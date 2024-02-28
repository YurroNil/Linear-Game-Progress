# -> in(@self: tp_lodestone.cursor, index: lgp.int)
# tp_lodestone.#current_place_index = index
# @self.position.z = index
# setblock @self.position minecraft:air
scoreboard players operation #current_place_index lgp.tp_lodestone.var = #input lgp.int
execute store result entity @s Pos[2] double 1 run scoreboard players get #input lgp.int
execute at @s run setblock ~ ~ ~ air