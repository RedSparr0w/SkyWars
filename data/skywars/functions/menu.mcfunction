# Reset the scoreboard so this isn't run multiple times
scoreboard players set @s sw.menu 0

tellraw @s [" "]
tellraw @s [" "]
tellraw @s [" "]
tellraw @s ["",{"text":"===== SkyWars =====","bold":true,"color":"gold"}]
execute unless entity @s[nbt={Dimension:"skywars:skywars"}] run tellraw @s [{"text":"[Go to SkyWars Lobby]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger sw.lobby"},"hoverEvent":{"action":"show_text","value":{"text":"Go to the SkyWars lobby to play a game","color":"aqua"}}}]
tellraw @s[nbt={Dimension:"skywars:skywars"}] [{"text":"[Leave SkyWars Lobby]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger sw.leave"},"hoverEvent":{"action":"show_text","value":{"text":"Leave the SkyWars lobby","color":"aqua"}}}]
tellraw @s [" "]
tellraw @s ["",{"text":"--- Other ---","color":"gold"}]
tellraw @s [{"text":"[Settings]","color":"#CDCDCD", "clickEvent":{"action":"run_command","value":"/trigger sw.settings"},"hoverEvent":{"action":"show_text","value":{"text":"Change/View settings","color":"#CDCDCD" }}}]
tellraw @s [{"text":"[Information]","color":"#CDCDCD", "clickEvent":{"action":"run_command","value":"/trigger sw.info"},"hoverEvent":{"action":"show_text","value":{"text":"Datapack information","color":"#CDCDCD" }}}]
tellraw @s [" "]
tellraw @s [" "]
