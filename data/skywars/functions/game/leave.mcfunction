# Reset the scoreboard so this isn't run multiple times
scoreboard players set @s sw.leave 0

# TP player back to their previous position
execute in minecraft:overworld run summon armor_stand 0 0 0 {NoGravity:1,NoBasePlate:1,Invisible:1,Invulnerable:1,Small:1,Tags:["SkyWarsTP"]}
execute in minecraft:overworld run execute store result entity @e[tag=SkyWarsTP,limit=1] Pos[0] double 1 run scoreboard players get @s sw.pos.x
execute in minecraft:overworld run execute store result entity @e[tag=SkyWarsTP,limit=1] Pos[1] double 1 run scoreboard players get @s sw.pos.y
execute in minecraft:overworld run execute store result entity @e[tag=SkyWarsTP,limit=1] Pos[2] double 1 run scoreboard players get @s sw.pos.z

execute in minecraft:overworld run tp @s @e[tag=SkyWarsTP,limit=1]
execute in minecraft:overworld run spawnpoint @s ~ ~ ~
execute in minecraft:overworld run kill @e[tag=SkyWarsTP]

# clear inventory, reset game mode, leave teams
clear @s
gamemode survival @s
team leave @s