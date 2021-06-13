#---------------------------------
#                                 
#      SKYWARS : GOLD RUSH        
#          by Nixinova            
#                                 
#        Readying commands        
#                                 
#---------------------------------

# Clear all tags first
tag @s remove sw1
tag @s remove sw2
tag @s remove sw3
tag @s remove sw4
tag @s remove sw5
tag @s remove sw6
tag @s remove sw7
tag @s remove sw8
tag @s remove sw9
tag @s remove sw10
tag @s remove sw11
tag @s remove sw12

# Add spawn position tags to player
execute unless entity @a[tag=sw1] run tag @s add sw1
execute unless entity @a[tag=sw2] run tag @s add sw2
execute unless entity @a[tag=sw3] run tag @s add sw3
execute unless entity @a[tag=sw4] run tag @s add sw4
execute unless entity @a[tag=sw5] run tag @s add sw5
execute unless entity @a[tag=sw6] run tag @s add sw6
execute unless entity @a[tag=sw7] run tag @s add sw7
execute unless entity @a[tag=sw8] run tag @s add sw8
execute unless entity @a[tag=sw9] run tag @s add sw9
execute unless entity @a[tag=sw10] run tag @s add sw10
execute unless entity @a[tag=sw11] run tag @s add sw11
execute unless entity @a[tag=sw12] run tag @s add sw12

# Final commands
tellraw @a[nbt={Dimension:"skywars:skywars"}] [{"selector":"@s","color":"green"},{"text":" is now ready!","color":"green"}]
team join ready @s