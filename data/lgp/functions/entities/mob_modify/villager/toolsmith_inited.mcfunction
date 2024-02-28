#modify

    data modify entity @s Offers.Recipes[0].buy.id set value "minecraft:stick"
    data modify entity @s Offers.Recipes[0].buy.Count set value 30

    data modify entity @s Offers.Recipes[0].sell.id set value "minecraft:emerald"
    data modify entity @s Offers.Recipes[0].sell.Count set value 1

    data modify entity @s Offers.Recipes[1].sell.id set value "minecraft:oak_log"

    data modify entity @s Offers.Recipes[2].buy.id set value "minecraft:copper_ingot"
    data modify entity @s Offers.Recipes[2].buy.Count set value 3

    data modify entity @s Offers.Recipes[4].sell.id set value "minecraft:golden_axe"
    data modify entity @s Offers.Recipes[4].sell.tag set value {Enchantments:[{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:2s}]}
    data modify entity @s Offers.Recipes[5].sell.id set value "minecraft:golden_pickaxe"
    data modify entity @s Offers.Recipes[5].sell.tag set value {}
    data modify entity @s Offers.Recipes[6].buy.id set value "minecraft:copper_ingot"
    data modify entity @s Offers.Recipes[6].buy.Count set value 2
    data modify entity @s Offers.Recipes[6].sell.id set value "minecraft:emerald"
    data modify entity @s Offers.Recipes[6].sell.tag set value {}


    data modify entity @s Offers.Recipes[7].sell.id set value "minecraft:stone_axe"

    #设置精准采集附魔书
    data modify entity @s Offers.Recipes[8].sell.id set value "minecraft:enchanted_book"
    data modify entity @s Offers.Recipes[8].sell.tag set value {StoredEnchantments:[{id:"minecraft:silk_touch",lvl:1s}]}

scoreboard players operation @s lgp.villagerData = @s lgp.villagerLevel