
#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s pt.info 0

tellraw @s [" "]
tellraw @s [" "]
tellraw @s {"text":"===== SkyWars Information =====","bold":true,"color":"gold"}
tellraw @s ["Welcome to SkyWars,"]
tellraw @s [" "]
tellraw @s ["",{"text":"This SkyWars was made for vanilla using custom dimensions, so you can add it to any survival world!"}]
tellraw @s [" "]
tellraw @s [{"text":"You can view the main menu by typing\n"},{"text":"/trigger sw.menu","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger sw.menu"},"hoverEvent":{"action":"show_text","contents":"Click to enter command"}}]
tellraw @s [" "]
tellraw @s {"text":"===== Credits =====","bold":true,"color":"gold"}
tellraw @s {"text":"RedSparr0w#0167","color":"red","clickEvent":{"action":"copy_to_clipboard","value":"RedSparr0w#0167"},"hoverEvent":{"action":"show_text","contents":"[Discord ID] Click to copy"}}
tellraw @s {"text":"Nixinova","color":"aqua","clickEvent":{"action":"copy_to_clipboard","value":"Nixinova"},"hoverEvent":{"action":"show_text","contents":"[Username] Click to copy"}}
tellraw @s [" "]
