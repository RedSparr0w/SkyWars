# Reset the scoreboard so this isn't run multiple times
scoreboard players set @s sw.ready 0
scoreboard players set #errors sw.dummy 0

# Player no longer ready
execute if entity @s[team=ready] run tag @s add unready

# Only allow player to ready up if in the lobby
execute unless entity @s[team=lobby] run scoreboard players add #errors sw.dummy 1
# Only announce ready if game not full
execute if score #errors sw.dummy matches 0 run execute if score ready sw.players >= maximum sw.players run tellraw @s [{"text":"Sorry, But the maximum amount of players has been reached!","color":"red"}]
execute if score ready sw.players >= maximum sw.players run scoreboard players add #errors sw.dummy 1
# Only announce ready if player not already ready
execute if score #errors sw.dummy matches 0 run execute unless entity @s[team=ready] run team join ready @s
execute if score #errors sw.dummy matches 0 run execute if entity @s[team=ready] run tellraw @a[nbt={Dimension:"skywars:skywars"}] [{"selector":"@s","color":"green"},{"text":" is now ready!","color":"green"}]

# Player no longer ready continued | Remove ready team, and unready tag
# this needs to be done after otherwise the player will unready, then re-ready
execute if entity @s[tag=unready] run tellraw @a[nbt={Dimension:"skywars:skywars"}] [{"selector":"@s","color":"yellow"},{"text":" no longer ready!","color":"yellow"}]
execute if entity @s[tag=unready] run team join lobby @s
execute if entity @s[tag=unready] run tag @s remove unready
