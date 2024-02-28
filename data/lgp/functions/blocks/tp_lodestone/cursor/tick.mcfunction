# from = lgp:blocks/tp_lodestone/tick
#游标高频维护#current_place_index
# if begin
execute if block ~ ~ ~ stone if function lgp:blocks/tp_lodestone/check/next_in_range run function lgp:blocks/tp_lodestone/cursor/move_pos
# if end

# if begin
execute unless block ~ ~ ~-1 stone if score #current_place_index lgp.tp_lodestone.var matches 1.. run function lgp:blocks/tp_lodestone/cursor/move_neg
# if end
