
tag @a[tag=!player.operTags,gamemode=creative] add player.operTags
tag @a[tag=!player.operTags,gamemode=spectator] add player.operTags

tag @a[tag=player.operTags,gamemode=survival] remove player.operTags
tag @a[tag=player.operTags,gamemode=adventure] remove player.operTags

tag @e[type=#lgp:player_group] add player.group
tag @a[tag=!player.operTags] add player.group
