
#盔甲
    loot replace entity @s[predicate=!lgp:entities/mob_modify/is_pillager_captain] armor.head loot lgp:entities/mob_modify/_equipment/helmets
    loot replace entity @s armor.chest loot lgp:entities/mob_modify/_equipment/chestplates
    loot replace entity @s armor.legs loot lgp:entities/mob_modify/_equipment/leggings
    loot replace entity @s armor.feet loot lgp:entities/mob_modify/_equipment/boots

#武器
    loot replace entity @s[type=#lgp:holding_weapon/axes] weapon.mainhand loot lgp:entities/mob_modify/_equipment/axes
    loot replace entity @s[type=#lgp:holding_weapon/bow] weapon.mainhand loot lgp:entities/mob_modify/_equipment/bow
    loot replace entity @s[type=#lgp:holding_weapon/sword] weapon.mainhand loot lgp:entities/mob_modify/_equipment/swords

loot replace entity @s[type=#lgp:holding_weapon/crossbow] weapon.mainhand loot lgp:entities/mob_modify/_equipment/crossbow
loot replace entity @s[type=#lgp:holding_weapon/trident] weapon.mainhand loot lgp:entities/mob_modify/_equipment/trident

tag @s add lgp.equip.modified