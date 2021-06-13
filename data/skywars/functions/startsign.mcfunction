#---------------------------------#
#                                 #
#      SKYWARS : GOLD RUSH        #
#          by Nixinova            #
#                                 #
#      Starting sign commands     #
#                                 #
#---------------------------------#

execute if score count players_ready >= limit players_ready run function skywars:start
execute if score count players_ready < limit players_ready run tellraw @a[team=!playing,nbt={Dimension:"skywars:skywars"}] [{"text":"Not enough players","color":"red"}]