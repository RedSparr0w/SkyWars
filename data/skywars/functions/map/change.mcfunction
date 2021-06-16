# Reset the scoreboard so this isn't run multiple times
scoreboard players set @s sw.changemap 0
scoreboard players set #errors sw.dummy 0


execute unless score ready sw.players matches 0 run tellraw @s [{"text":"Cannot change map while players are ready!","color":"red"}]
execute unless score ready sw.players matches 0 run scoreboard players add #errors sw.dummy 1
# Reset back to first map
execute if score #errors sw.dummy matches 0 run scoreboard players add #map sw.dummy 1
execute if score #errors sw.dummy matches 0 run execute if score #map sw.dummy matches 3 run scoreboard players set #map sw.dummy 0

execute if score #errors sw.dummy matches 0 run function skywars:map/clear
execute if score #errors sw.dummy matches 0 run function skywars:map/load