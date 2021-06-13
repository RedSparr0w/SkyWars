#---------------------------------#
#                                 #
#      SKYWARS : GOLD RUSH        #
#          by Nixinova            #
#                                 #
#       World initialisation      #
#                                 #
#---------------------------------#

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
scoreboard objectives add kills playerKillCount "Kills"
scoreboard objectives add wins dummy "Wins"
scoreboard objectives add players_ready dummy "Players Needed"
scoreboard objectives add cage dummy "CageID"
scoreboard objectives add players dummy "Players"
scoreboard objectives add kit dummy "KitID"
scoreboard objectives add health health "HP"
scoreboard objectives add deaths deathCount "Deaths"
scoreboard objectives add tags dummy "Tags"
scoreboard objectives setdisplay sidebar.team.red kills
scoreboard players set limit players_ready 2

#> Triggers
#### TODO: all these triggers
# Show main menu
scoreboard objectives add sw.menu trigger
# Show settings menu
scoreboard objectives add sw.settings trigger
# Show datapack information
scoreboard objectives add sw.info trigger
# Join lobby
scoreboard objectives add sw.lobby trigger
# Ready up
scoreboard objectives add sw.ready trigger
# Start game
scoreboard objectives add sw.startgame trigger

#> Force Load area needed
execute in skywars:skywars run forceload add 0 0

### LOBBY ###

# Structure
execute in skywars:skywars run fill 33 137 -7 19 142 7 smooth_quartz hollow
execute in skywars:skywars run fill 33 137 -7 19 137 7 white_stained_glass
execute in skywars:skywars run fill 33 142 -7 19 142 7 white_stained_glass

# Signs
execute in skywars:skywars run setblock 27 139 -6 oak_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger sw.menu"}}',Text2:'{"text":"Start","color":"green"}'}
execute in skywars:skywars run setblock 25 139 -6 oak_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger sw.ready"}}',Text2:'{"text":"Ready","color":"yellow"}'}
execute in skywars:skywars run setblock 27 139 6 oak_wall_sign{Text1:'{"text":"Made by","color":"white"}',Text2:'{"text":"Nixinova","color":"aqua"}',Text3:'{"text":"RedSparr0vv","color":"red"}'}
execute in skywars:skywars run setblock 25 139 6 oak_wall_sign{Text2:'{"text":"SkyWars v3.0","color":"green"}',Text3:'{"text":"Minecraft 1.17","color":"aqua"}'}

# Credit
execute in skywars:skywars run setblock 27 140 6 player_wall_head{SkullOwner:{Name:"RedSparr0vv"}}
execute in skywars:skywars run setblock 26 140 6 player_wall_head{SkullOwner:{Name:"Nixinova"}}

### MAP LOADING ###

# Structure block platform
execute in skywars:skywars run fill 22 205 9 28 205 -5 light_blue_terracotta

# Ticker
execute in skywars:skywars run setblock 25 206 6 repeating_command_block{Command:"function skywars:running",auto:true}

# Bridge
execute in skywars:skywars run setblock 27 206 2 structure_block{mode:LOAD,name:"skywars:bridge-w",posX:-11,posY:-12,posZ:-2}
execute in skywars:skywars run setblock 26 206 2 structure_block{mode:LOAD,name:"skywars:bridge-e",posX:4,posY:-12,posZ:-2}

# Western Middle
execute in skywars:skywars run setblock 27 206 1 structure_block{mode:LOAD,name:"skywars:_midw-ne",posX:-4,posY:-16,posZ:-8}
execute in skywars:skywars run setblock 26 206 1 structure_block{mode:LOAD,name:"skywars:_midw-se",posX:-4,posY:-16,posZ:-4}
execute in skywars:skywars run setblock 25 206 1 structure_block{mode:LOAD,name:"skywars:_midw-sw",posX:-8,posY:-16,posZ:-4}
execute in skywars:skywars run setblock 24 206 1 structure_block{mode:LOAD,name:"skywars:_midw-nw",posX:-8,posY:-16,posZ:-8}
execute in skywars:skywars run setblock 23 206 1 structure_block{mode:LOAD,name:"skywars:_midw-b",posX:-7,posY:1,posZ:-9}

# Eastern Middle
execute in skywars:skywars run setblock 27 206 0 structure_block{mode:LOAD,name:"skywars:_mide-ne",posX:-2,posY:-16,posZ:-7}
execute in skywars:skywars run setblock 26 206 0 structure_block{mode:LOAD,name:"skywars:_mide-se",posX:-2,posY:-16,posZ:-3}
execute in skywars:skywars run setblock 25 206 0 structure_block{mode:LOAD,name:"skywars:_mide-sw",posX:-6,posY:-16,posZ:-3}
execute in skywars:skywars run setblock 24 206 0 structure_block{mode:LOAD,name:"skywars:_mide-nw",posX:-6,posY:-16,posZ:-7}
execute in skywars:skywars run setblock 23 206 0 structure_block{mode:LOAD,name:"skywars:_mide-b",posX:-6,posY:1,posZ:-6}

# North-facing islands
execute in skywars:skywars run setblock 27 206 -1 structure_block{mode:LOAD,name:"skywars:isle_n1",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock 26 206 -1 structure_block{mode:LOAD,name:"skywars:isle_n2",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock 25 206 -1 structure_block{mode:LOAD,name:"skywars:isle_n3",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock 24 206 -1 structure_block{mode:LOAD,name:"skywars:isle_n4",posX:-5,posY:-18,posZ:-6}

# East-facing islands
execute in skywars:skywars run setblock 27 206 -2 structure_block{mode:LOAD,name:"skywars:isle_e1",posX:-6,posY:-18,posZ:-5}
execute in skywars:skywars run setblock 26 206 -2 structure_block{mode:LOAD,name:"skywars:isle_e2",posX:-6,posY:-18,posZ:-5}

# West-facing islands
execute in skywars:skywars run setblock 27 206 -3 structure_block{mode:LOAD,name:"skywars:isle_w1",posX:-6,posY:-18,posZ:-5}
execute in skywars:skywars run setblock 26 206 -3 structure_block{mode:LOAD,name:"skywars:isle_w2",posX:-6,posY:-18,posZ:-5}

# South-facing islands
execute in skywars:skywars run setblock 27 206 -4 structure_block{mode:LOAD,name:"skywars:isle_s1",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock 26 206 -4 structure_block{mode:LOAD,name:"skywars:isle_s2",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock 25 206 -4 structure_block{mode:LOAD,name:"skywars:isle_s3",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock 24 206 -4 structure_block{mode:LOAD,name:"skywars:isle_s4",posX:-5,posY:-18,posZ:-6}

# Starting text
execute in skywars:skywars run setblock 25 206 7 command_block{Command:'setblock ~-1 ~ ~ air'}
execute in skywars:skywars run setblock 24 206 6 command_block{Command:'tellraw @a[team=playing,nbt={Dimension:"skywars:skywars"}] ["",{"text":"Starting!","color":"yellow"}]'}
execute in skywars:skywars run setblock 24 206 8 command_block{Command:'execute as @a[team=playing,nbt={Dimension:"skywars:skywars"}] at @s run fill ~ ~ ~ ~ ~-3 ~ air'}
