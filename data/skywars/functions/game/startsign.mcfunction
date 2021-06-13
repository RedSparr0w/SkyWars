# Reset the scoreboard so this isn't run multiple times
scoreboard players set @s sw.startgame 0
scoreboard players set #errors sw.dummy 0

# Check player is part of the ready team
execute unless entity @s[team=ready] run tellraw @s [{"text":"You haven't selected that you are ready yet!","color":"red"}]
execute unless entity @s[team=ready] run scoreboard players add #errors sw.dummy 1

# Check if enough players are ready yet
execute if score #errors sw.dummy matches 0 run execute if score ready sw.players >= #minimum sw.players run function skywars:game/start
execute if score #errors sw.dummy matches 0 run execute if score ready sw.players < #minimum sw.players run tellraw @a[team=!playing,nbt={Dimension:"skywars:skywars"}] [{"text":"Not enough players, need 2 to start","color":"red"}]