# Store players position
execute store result score @s sw.pos.x run data get entity @s Pos[0]
execute store result score @s sw.pos.y run data get entity @s Pos[1]
execute store result score @s sw.pos.z run data get entity @s Pos[2]

# Reset their spawnpoint
execute in skywars:skywars run spawnpoint @s 26 139 0
execute in skywars:skywars run tp @s 26.5 139 0.5 0 0

# Update gamemode, add to lobby team
gamemode adventure @s
team join lobby @s