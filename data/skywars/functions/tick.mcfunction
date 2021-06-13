execute as @a[scores={sw.menu=1..}] run function skywars:menu
execute as @a[scores={sw.settings=1..}] run function skywars:settings/show
execute as @a[scores={sw.info=1..}] run function skywars:information
execute as @a[scores={sw.lobby=1..}] run function skywars:game/lobby

scoreboard players enable @a sw.menu
scoreboard players enable @a sw.settings
scoreboard players enable @a sw.info
scoreboard players enable @a sw.lobby
scoreboard players enable @a[nbt={Dimension:"skywars:skywars"}] sw.ready
scoreboard players enable @a[nbt={Dimension:"skywars:skywars"}] sw.startgame

#> Run sub function ticks
