data modify entity @s text set from entity @p[tag=lgp.tp_lodestone.player.try_change_current_text,distance=..7] SelectedItem.tag.display.Name
execute as @p[tag=lgp.tp_lodestone.player.try_change_current_text,distance=..7] at @s run function lgp:blocks/tp_lodestone/obj/player/change_current_text



#say get_new_name