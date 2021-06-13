#---------------------------------#
#                                 #
#      SKYWARS : GOLD RUSH        #
#          by Nixinova            #
#                                 #
#      Starting sign commands     #
#                                 #
#---------------------------------#

scoreboard players set count players_ready 0
execute as @a[team=ready] run scoreboard players add count players_ready 1
execute if score count players_ready >= limit players_ready run function skywars:start
execute if score count players_ready < limit players_ready run tellraw @a[team=!playing,nbt={Dimension:"skywars:skywars"}] [{"text":"Not enough players, need 2 to start","color":"red"}]