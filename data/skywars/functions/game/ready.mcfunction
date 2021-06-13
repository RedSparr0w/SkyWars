# Reset the scoreboard so this isn't run multiple times
scoreboard players set @s sw.ready 0

# Only allow player to ready up if in the lobby
execute if entity @s[team=ready] run tag @s add unready
execute if entity @s[team=lobby] run function skywars:game/ready/success
execute if entity @s[tag=unready] run tellraw @a[nbt={Dimension:"skywars:skywars"}] [{"selector":"@s","color":"yellow"},{"text":" no longer ready!","color":"yellow"}]
execute if entity @s[tag=unready] run team join lobby @s
execute if entity @s[tag=unready] run tag @s remove unready
