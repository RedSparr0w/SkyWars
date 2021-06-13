# Reset the scoreboard so this isn't run multiple times
scoreboard players set @s sw.startgame 0

# Check how many players are ready
scoreboard players set ready players 0
execute as @a[team=ready] run scoreboard players add ready players 1

# Check if enough players are ready yet
execute if score ready players >= #minimum players run function skywars:game/start
execute if score ready players < #minimum players run tellraw @a[team=!playing,nbt={Dimension:"skywars:skywars"}] [{"text":"Not enough players, need 2 to start","color":"red"}]