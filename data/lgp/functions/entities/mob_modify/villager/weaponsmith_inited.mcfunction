#modify
    data modify entity @s Offers.Recipes[0].sell.id set value "minecraft:stone"
    data modify entity @s Offers.Recipes[1].sell.id set value "minecraft:stick"
    data modify entity @s Offers.Recipes[6].sell.id set value "minecraft:wooden_axe"
    data modify entity @s Offers.Recipes[7].sell.id set value "minecraft:wooden_sword"

scoreboard players operation @s lgp.villagerData = @s lgp.villagerLevel