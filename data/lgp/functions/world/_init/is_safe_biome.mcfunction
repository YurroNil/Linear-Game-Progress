scoreboard players add _worldInitTick lgp.world 1

execute if score _worldInitTick lgp.world matches 12 at @e[tag=lgp.biomeSeeker.root] run function lgp:world/_init/tp_to_surface

execute if score _worldInitTick lgp.world matches 15 at @e[tag=lgp.biomeSeeker.root] run function lgp:world/_init/setworldspawn

