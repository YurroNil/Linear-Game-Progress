#解锁第一章
    execute if entity @a[scores={lgp.worldProcess=1..}] run advancement grant @a only lgp:guide_part1/end
    execute if entity @a[scores={lgp.worldProcess=1..}] run advancement grant @a only lgp:chapter_1/root

#清除不祥之兆
    execute unless entity @a[scores={lgp.worldProcess=1..}] run effect clear @a minecraft:bad_omen
