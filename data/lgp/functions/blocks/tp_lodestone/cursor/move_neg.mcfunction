# -> in(@self)
# @self.position += vec(0, 0, -1)
# tp_lodestone.#current_place_index -= 1
tp @s ~ ~ ~-1
scoreboard players remove #current_place_index lgp.tp_lodestone.var 1
