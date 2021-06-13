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

tellraw @a[nbt={Dimension:"minecraft:skywars"}] ["",{"selector":"@a[team=playing]","color":"green"},{"text":" has won!","color":"green"}]
title @a[nbt={Dimension:"minecraft:skywars"}] title {"selector":"@a[team=playing]","color":"green"}
title @a[nbt={Dimension:"minecraft:skywars"}] subtitle {"text":"has won!","color":"green"}

tp @a[nbt={Dimension:"minecraft:skywars"}] 25 138 1
gamemode adventure @a[nbt={Dimension:"minecraft:skywars"}]
team join lobby @a[nbt={Dimension:"minecraft:skywars"}]
clear @a[nbt={Dimension:"minecraft:skywars"}]