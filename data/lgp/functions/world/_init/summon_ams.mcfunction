gamerule spawnRadius 5
kill @e[tag=lgp.biomeSeeker.root]
forceload add 10 10 -10 -10
summon armor_stand 0 150 0 {Invisible:true,Marker:true,NoGravity:true,DisabledSlots:4144959,Tags: ["lgp.biomeSeeker.root"],Rotation:[0.0f,90.0f]}

gamerule doWeatherCycle false
gamerule doDaylightCycle false
gamerule doMobSpawning false
scoreboard players set level lgp.world 1
