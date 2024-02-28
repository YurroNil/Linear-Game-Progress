#无法掉落
    data merge entity @s {HandDropChances: [0.0f, 0.0f], ArmorDropChances: [0.0f, 0.0f, 0.0f, 0.0f]}

#盔甲
    loot replace entity @s armor.head loot lgp:entities/mob_modify/_equipment/helmets_incaves
    loot replace entity @s armor.chest loot lgp:entities/mob_modify/_equipment/chestplates_incaves
    loot replace entity @s armor.legs loot lgp:entities/mob_modify/_equipment/leggings_incaves
    loot replace entity @s armor.feet loot lgp:entities/mob_modify/_equipment/boots_incaves
#武器
    loot replace entity @s[type=#lgp:holding_weapon/axes] weapon.mainhand loot lgp:entities/mob_modify/_equipment/axes_incaves
    loot replace entity @s[type=#lgp:holding_weapon/bow] weapon.mainhand loot lgp:entities/mob_modify/_equipment/bow_incaves
    loot replace entity @s[type=#lgp:holding_weapon/sword] weapon.mainhand loot lgp:entities/mob_modify/_equipment/swords_incaves

loot replace entity @s[type=#lgp:holding_weapon/crossbow] weapon.mainhand loot lgp:entities/mob_modify/_equipment/crossbow
loot replace entity @s[type=#lgp:holding_weapon/trident] weapon.mainhand loot lgp:entities/mob_modify/_equipment/trident

#结束
tag @s add lgp.equip.modified
