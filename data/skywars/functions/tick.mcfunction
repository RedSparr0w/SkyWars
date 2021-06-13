
#> Triggering the triggers
execute as @a[scores={sw.menu=1..}] run function skywars:menu
execute as @a[scores={sw.settings=1..}] run function skywars:settings/show
execute as @a[scores={sw.info=1..}] run function skywars:information
execute as @a[scores={sw.lobby=1..}] run function skywars:game/lobby
execute as @a[scores={sw.ready=1..}] run function skywars:game/ready
execute as @a[scores={sw.startgame=1..}] run function skywars:game/startsign
execute as @a[scores={sw.leave=1..}] run function skywars:game/leave

#> Triggers
# Can be used anywhere
scoreboard players enable @a sw.menu
scoreboard players enable @a sw.settings
scoreboard players enable @a sw.info

# Cannot use in skywars dimension
scoreboard players reset @a[nbt={Dimension:"skywars:skywars"}] sw.lobby
scoreboard players enable @a[nbt=!{Dimension:"skywars:skywars"}] sw.lobby

# Cannot use outside skywars dimension
scoreboard players enable @a[nbt={Dimension:"skywars:skywars"}] sw.ready
scoreboard players reset @a[nbt=!{Dimension:"skywars:skywars"}] sw.ready
scoreboard players enable @a[nbt={Dimension:"skywars:skywars"}] sw.startgame
scoreboard players reset @a[nbt=!{Dimension:"skywars:skywars"}] sw.startgame
scoreboard players enable @a[nbt={Dimension:"skywars:skywars"}] sw.leave
scoreboard players reset @a[nbt=!{Dimension:"skywars:skywars"}] sw.leave
scoreboard players enable @a[nbt={Dimension:"skywars:skywars"}] sw.kit
scoreboard players reset @a[nbt=!{Dimension:"skywars:skywars"}] sw.kit
scoreboard players enable @a[nbt={Dimension:"skywars:skywars"}] sw.cage
scoreboard players reset @a[nbt=!{Dimension:"skywars:skywars"}] sw.cage

#> Run sub function ticks
function skywars:game/running