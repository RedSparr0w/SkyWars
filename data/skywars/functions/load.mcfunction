### SETUP ###

#> Teams
team add lobby
team modify lobby color yellow
team add ready
team modify ready color green
team add spectator
team modify spectator color gray
team add playing
team modify playing color red

#> Scoreboards
scoreboard objectives add sw.dummy dummy
scoreboard objectives add sw.pos.x dummy
scoreboard objectives add sw.pos.y dummy
scoreboard objectives add sw.pos.z dummy
scoreboard objectives add sw.wins dummy "Wins"
scoreboard objectives add sw.players dummy "Players"
scoreboard objectives add sw.deaths deathCount "SkyWars Deaths"
scoreboard objectives setdisplay sidebar.team.red sw.players
scoreboard objectives setdisplay sidebar.team.gray sw.players
scoreboard objectives setdisplay sidebar.team.green sw.players
scoreboard objectives setdisplay sidebar.team.yellow sw.wins
scoreboard players set #minimum sw.players 2

#> Triggers
# Starting kits
scoreboard objectives add sw.kit trigger
# Starting Cage
scoreboard objectives add sw.cage trigger
# Show main menu
scoreboard objectives add sw.menu trigger
# Show datapack information
scoreboard objectives add sw.info trigger
# Join lobby
scoreboard objectives add sw.lobby trigger
# Ready up
scoreboard objectives add sw.ready trigger
# Start game
scoreboard objectives add sw.startgame trigger
# Leave game
scoreboard objectives add sw.leave trigger

#> Force Load area needed (for creation and tp back to overworld)
execute in minecraft:overworld run forceload add 0 0
execute in skywars:skywars run forceload add 0 0

### LOBBY ###

# Structure
execute in skywars:skywars run fill 33 137 -7 19 142 7 smooth_quartz hollow
execute in skywars:skywars run fill 33 137 -7 19 137 7 white_stained_glass
execute in skywars:skywars run fill 33 142 -7 19 142 7 white_stained_glass

# Signs
execute in skywars:skywars run setblock 27 139 -6 oak_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger sw.startgame"}}',Text2:'{"text":"Start","color":"green"}'}
execute in skywars:skywars run setblock 25 139 -6 oak_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger sw.ready"}}',Text2:'{"text":"Ready","color":"yellow"}'}
execute in skywars:skywars run setblock 27 139 6 oak_wall_sign{Text1:'{"text":"Made by","color":"white","clickEvent":{"action":"run_command","value":"trigger sw.info"}}',Text2:'{"text":"Nixinova","color":"aqua"}',Text3:'{"text":"RedSparr0vv","color":"red"}'}
execute in skywars:skywars run setblock 25 139 6 oak_wall_sign{Text2:'{"text":"SkyWars v3.0","color":"green","clickEvent":{"action":"run_command","value":"trigger sw.menu"}}',Text3:'{"text":"Menu","color":"aqua"}'}

# Credit
execute in skywars:skywars run setblock 27 140 6 player_wall_head{SkullOwner:{Name:"RedSparr0vv"}}
execute in skywars:skywars run setblock 26 140 6 player_wall_head{SkullOwner:{Name:"Nixinova"}}

# Clear then Load map
function skywars:map/clear
function skywars:map/load