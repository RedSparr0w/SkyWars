execute as @a[scores={sw.menu=1..}] run function skywars:menu
execute as @a[scores={sw.settings=1..}] run function skywars:settings/show
execute as @a[scores={sw.info=1..}] run function skywars:information
execute as @a[scores={sw.lobby=1..}] run function skywars:game/lobby
execute as @a[scores={sw.ready=1..}] run function skywars:game/ready
execute as @a[scores={sw.startgame=1..}] run function skywars:game/startsign
execute as @a[scores={sw.leave=1..}] run function skywars:game/leave

scoreboard players enable @a sw.menu
scoreboard players enable @a sw.settings
scoreboard players enable @a sw.info
scoreboard players enable @a sw.lobby
scoreboard players enable @a[nbt={Dimension:"skywars:skywars"}] sw.ready
scoreboard players enable @a[nbt={Dimension:"skywars:skywars"}] sw.startgame
scoreboard players enable @a[nbt={Dimension:"skywars:skywars"}] sw.leave
scoreboard players enable @a[nbt={Dimension:"skywars:skywars"}] sw.kit
scoreboard players enable @a[nbt={Dimension:"skywars:skywars"}] sw.cage

#> Run sub function ticks
function skywars:game/running