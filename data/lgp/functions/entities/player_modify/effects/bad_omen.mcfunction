#效果
    effect give @a[scores={player.badOmen=1}] minecraft:bad_omen infinite 0 true
    effect give @a[scores={player.badOmen=2}] minecraft:bad_omen infinite 1 true
    effect give @a[scores={player.badOmen=3}] minecraft:bad_omen infinite 2 true
    effect give @a[scores={player.badOmen=4}] minecraft:bad_omen infinite 3 true
    effect give @a[scores={player.badOmen=5..}] minecraft:bad_omen infinite 4 true

#袭击清除不祥之兆
    execute if score inRaiders lgp.raiders matches 1.. run scoreboard players reset @a[scores={player.badOmen=1..}] player.badOmen
    execute if score inRaiders lgp.raiders matches 1.. run effect clear @a[predicate=lgp:effect/bad_omen]
    
