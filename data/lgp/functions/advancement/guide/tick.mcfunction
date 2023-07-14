#解锁第一章
    execute if entity @a[scores={lgp.worldProcess=1..}] run advancement grant @a only lgp:guide/end
    execute if entity @a[scores={lgp.worldProcess=1..}] run advancement grant @a only lgp:chapter_1/root

#清除不祥之兆
    execute unless entity @a[scores={lgp.worldProcess=1..}] run effect clear @a minecraft:bad_omen

#设置进程分数
    scoreboard players set @a[scores={lgp.worldProcess=..-1},advancements={lgp:guide/get_copper_ingot=true}] lgp.worldProcess 0
