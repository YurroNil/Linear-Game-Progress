function lgp:advancement/guide_part1/compass_and_lodestone_rewards
tellraw @s {"text":"","extra":[{"text":"\n已解锁可探索的生物群系与结构：丛林生物群系\n","bold": true,"color":"yellow"}]}
execute unless entity @a[scores={lgp.worldProcess=6..}] run scoreboard players set chapter1.4.loop lgp.plot 1