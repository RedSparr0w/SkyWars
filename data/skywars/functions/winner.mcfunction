#---------------------------------
#                                 
#      SKYWARS : GOLD RUSH        
#          by Nixinova            
#                                 
#       Finishing commands      
#                                 
#---------------------------------

scoreboard players set ingame players 0

scoreboard players add @a[team=playing] wins 1
scoreboard players reset * deaths

tellraw @a[nbt={Dimension:"skywars:skywars"}] ["",{"selector":"@a[team=playing]","color":"green"},{"text":" has won!","color":"green"}]
title @a[nbt={Dimension:"skywars:skywars"}] title {"selector":"@a[team=playing]","color":"green"}
title @a[nbt={Dimension:"skywars:skywars"}] subtitle {"text":"has won!","color":"green"}

tp @a[nbt={Dimension:"skywars:skywars"}] 25 138 1
gamemode adventure @a[nbt={Dimension:"skywars:skywars"}]
team join lobby @a[nbt={Dimension:"skywars:skywars"}]
clear @a[nbt={Dimension:"skywars:skywars"}]