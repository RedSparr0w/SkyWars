# Reset the scoreboard so this isn't run multiple times
scoreboard players set @s sw.ready 0

# TODO: check if game already in progress

# Only announce ready if player not already ready
execute unless entity @s[team=ready] run tellraw @a[nbt={Dimension:"skywars:skywars"}] [{"selector":"@s","color":"green"},{"text":" is now ready!","color":"green"}]
team join lobby @s

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
execute unless entity @s[team=ready] run execute unless entity @a[tag=sw1] run tag @s add sw1
execute if entity @s[tag=sw1] run team join ready @s
execute unless entity @s[team=ready] run execute unless entity @a[tag=sw2] run tag @s add sw2
execute if entity @s[tag=sw2] run team join ready @s
execute unless entity @s[team=ready] run execute unless entity @a[tag=sw3] run tag @s add sw3
execute if entity @s[tag=sw3] run team join ready @s
execute unless entity @s[team=ready] run execute unless entity @a[tag=sw4] run tag @s add sw4
execute if entity @s[tag=sw4] run team join ready @s
execute unless entity @s[team=ready] run execute unless entity @a[tag=sw5] run tag @s add sw5
execute if entity @s[tag=sw5] run team join ready @s
execute unless entity @s[team=ready] run execute unless entity @a[tag=sw6] run tag @s add sw6
execute if entity @s[tag=sw6] run team join ready @s
execute unless entity @s[team=ready] run execute unless entity @a[tag=sw7] run tag @s add sw7
execute if entity @s[tag=sw7] run team join ready @s
execute unless entity @s[team=ready] run execute unless entity @a[tag=sw8] run tag @s add sw8
execute if entity @s[tag=sw8] run team join ready @s
execute unless entity @s[team=ready] run execute unless entity @a[tag=sw9] run tag @s add sw9
execute if entity @s[tag=sw9] run team join ready @s
execute unless entity @s[team=ready] run execute unless entity @a[tag=sw10] run tag @s add sw10
execute if entity @s[tag=sw10] run team join ready @s
execute unless entity @s[team=ready] run execute unless entity @a[tag=sw11] run tag @s add sw11
execute if entity @s[tag=sw11] run team join ready @s
execute unless entity @s[team=ready] run execute unless entity @a[tag=sw12] run tag @s add sw12
execute if entity @s[tag=sw12] run team join ready @s

# Final commands

# Check how many players are ready
scoreboard players set ready players 0
execute as @a[team=ready] run scoreboard players add ready players 1