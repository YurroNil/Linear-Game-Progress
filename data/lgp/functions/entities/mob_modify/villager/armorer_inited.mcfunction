#modify
    data modify entity @s Offers.Recipes[0].sell.id set value "minecraft:iron_nugget"
    data modify entity @s Offers.Recipes[1].sell.id set value "minecraft:amethyst_shard"
    data modify entity @s Offers.Recipes[2].sell.Count set value 1
    data modify entity @s Offers.Recipes[2].sell.id set value "minecraft:gravel"
    data modify entity @s Offers.Recipes[3].sell.id set value "minecraft:coal"
    data modify entity @s Offers.Recipes[5].sell.Count set value 1
    data modify entity @s Offers.Recipes[5].sell.id set value "minecraft:gravel"
    data modify entity @s Offers.Recipes[6].sell.id set value "minecraft:chainmail_leggings"
    data modify entity @s Offers.Recipes[7].sell.id set value "minecraft:chainmail_boots"
    data modify entity @s Offers.Recipes[8].sell.id set value "minecraft:chainmail_helmet"
    data modify entity @s Offers.Recipes[9].sell.id set value "minecraft:chainmail_chestplate"

scoreboard players operation @s lgp.villagerData = @s lgp.villagerLevel
