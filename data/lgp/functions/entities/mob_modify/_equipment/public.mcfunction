#无法掉落
    data merge entity @s {HandDropChances:[0.0f,100.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}

    #主世界生物装备修改
    execute if entity @s[scores={lgp.PosY=46..},predicate=lgp:in_dimension/overworld] run function lgp:entities/mob_modify/_equipment/main_surface
    execute if entity @s[scores={lgp.PosY=..45},predicate=lgp:in_dimension/overworld] run function lgp:entities/mob_modify/_equipment/main_incaves

    #下界/末地生物装备修改
    execute if entity @s[predicate=lgp:in_dimension/the_end] run function lgp:entities/mob_modify/_equipment/main_surface
    execute if entity @s[predicate=lgp:in_dimension/the_nether] run function lgp:entities/mob_modify/_equipment/main_surface
