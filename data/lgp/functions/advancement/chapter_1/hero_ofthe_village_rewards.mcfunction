
give @s minecraft:wooden_sword{display:{Lore:['{"text":" "}','{"text":"进度奖励","color":"#00FF7F","italic":false}']},Enchantments:[{id:"minecraft:sharpness",lvl:2},{id:"minecraft:unbreaking",lvl:3}]} 1
give @s minecraft:enchanted_book{display:{Lore:['{"text":" "}','{"text":"进度奖励","color":"#00FF7F","italic":false}']},StoredEnchantments:[{id:"minecraft:protection",lvl:2},{id:"minecraft:unbreaking",lvl:2}]} 1
give @s minecraft:iron_block{display:{Lore:['{"text":" "}','{"text":"进度奖励","color":"#00FF7F","italic":false}']}} 8
give @s minecraft:emerald{display:{Lore:['{"text":" "}','{"text":"进度奖励","color":"#00FF7F","italic":false}']}} 64

give @s minecraft:enchanted_golden_apple{display:{Lore:['{"text":" "}','{"text":"进度奖励","color":"#00FF7F","italic":false}']}} 3
give @s minecraft:golden_apple{display:{Lore:['{"text":" "}','{"text":"进度奖励","color":"#00FF7F","italic":false}']}} 10

execute unless entity @a[scores={lgp.worldProcess=4..}] run scoreboard players set chapter1.3.loop lgp.plot 1