# Reset the scoreboard so this isn't run multiple times
scoreboard players set @s sw.lobby 0
scoreboard players set #errors sw.dummy 0
scoreboard players set #inventory sw.dummy 0

# Check player in overworld
execute unless entity @s[nbt={Dimension:"minecraft:overworld"}] run tellraw @s [{"text":"You must be in the overworld to go to the SkyWars lobby!","color":"red"}]
execute unless entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players add #errors sw.dummy 1

# Check inventory is empty
execute store result score #inventory sw.dummy run data get entity @s Inventory
execute unless score #inventory sw.dummy matches 0 run tellraw @s [{"text":"Inventory must be empty to go to the SkyWars lobby!","color":"red"}]
execute unless score #inventory sw.dummy matches 0 run scoreboard players add #errors sw.dummy 1

# TP to lobby if no errors
execute in skywars:skywars unless block 26 139 7 minecraft:smooth_quartz run function skywars:load
execute if score #errors sw.dummy matches 0 run function skywars:game/lobby/success