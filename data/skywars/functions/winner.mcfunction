#---------------------------------
#                                 
#      SKYWARS : GOLD RUSH        
#          by Nixinova            
#                                 
#       Finishing commands      
#                                 
#---------------------------------

execute as @a[team=playing,nbt={Dimension:"skywars:skywars"}] unless entity @s[scores={sw.deaths=1..}] run tag @s add winner
scoreboard players add @a[tag=winner] sw.wins 1
scoreboard players set @a sw.deaths 0

tellraw @a[nbt={Dimension:"skywars:skywars"}] ["",{"selector":"@a[tag=winner]","color":"green"},{"text":" has won!","color":"green"}]
title @a[nbt={Dimension:"skywars:skywars"}] title {"selector":"@a[tag=winner]","color":"green"}
title @a[nbt={Dimension:"skywars:skywars"}] subtitle {"text":"has won!","color":"green"}

tag @a[tag=winner] remove winner
clear @a[nbt={Dimension:"skywars:skywars"}]
team join lobby @a[nbt={Dimension:"skywars:skywars"}]
gamemode adventure @a[nbt={Dimension:"skywars:skywars"}]
execute in skywars:skywars run tp @a[nbt={Dimension:"skywars:skywars"}] 25 138 1