#---------------------------------
#                                 
#      SKYWARS : GOLD RUSH        
#          by Nixinova            
#                                 
#       Finishing commands      
#                                 
#---------------------------------

scoreboard players add @a[team=playing] sw.wins 1
scoreboard players reset * sw.deaths

tellraw @a[nbt={Dimension:"skywars:skywars"}] ["",{"selector":"@a[team=playing]","color":"green"},{"text":" has won!","color":"green"}]
title @a[nbt={Dimension:"skywars:skywars"}] title {"selector":"@a[team=playing]","color":"green"}
title @a[nbt={Dimension:"skywars:skywars"}] subtitle {"text":"has won!","color":"green"}

clear @a[nbt={Dimension:"skywars:skywars"}]
team join lobby @a[nbt={Dimension:"skywars:skywars"}]
gamemode adventure @a[nbt={Dimension:"skywars:skywars"}]
execute in skywars:skywars run tp @a[nbt={Dimension:"skywars:skywars"}] 25 138 1