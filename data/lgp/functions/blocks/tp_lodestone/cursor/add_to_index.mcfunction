# -> in(@self)
# if !block.check("stone", @self.position) && \
# if #current_place_index.score.get("lgp.PosZ") < #max_index.score.get("lgp.tp_lodestone.var") run {
#   setblock ~ ~ ~ minecraft:stone
#   function(@self) lgp:blocks/tp_lodestone/cursor/move
# }
execute unless block ~ ~ ~ stone if score #current_place_index lgp.tp_lodestone.var < #max_index lgp.tp_lodestone.var run tag @s add IF_BLOCK
# if begin
    execute if entity @s[tag=IF_BLOCK] run setblock ~ ~ ~ minecraft:stone
    execute if entity @s[tag=IF_BLOCK] run function lgp:blocks/tp_lodestone/cursor/move_pos
# if end
tag @s[tag=IF_BLOCK] remove IF_BLOCK 
