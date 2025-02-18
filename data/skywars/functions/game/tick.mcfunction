# Player count test
execute store result score lobby sw.players if entity @a[team=lobby,nbt={Dimension:"skywars:skywars"}]
execute store result score ready sw.players if entity @a[team=ready,nbt={Dimension:"skywars:skywars"}]
execute store result score alive sw.players if entity @a[team=playing,nbt={Dimension:"skywars:skywars"}]
execute if score alive sw.players matches 1 run function skywars:game/winner

# Lobby hotbar
execute in skywars:skywars run item replace entity @a[team=!spectator,x=25,y=138,z=1,distance=..11] hotbar.0 with diamond_sword{display:{Name:'"\\u00A7eLobby Blade"',Lore:['"\\u00A7cFight in the lobby!"']},Enchantments:[{id:"knockback",lvl:2}],Unbreakable:true,HideFlags:127}
execute in skywars:skywars run item replace entity @a[team=!spectator,x=25,y=138,z=1,distance=..11] hotbar.1 with air
execute in skywars:skywars run item replace entity @a[team=!spectator,x=25,y=138,z=1,distance=..11] hotbar.2 with air
execute in skywars:skywars run item replace entity @a[team=!spectator,x=25,y=138,z=1,distance=..11] hotbar.3 with written_book{pages:['[{"text":"Select a kit:\\n","color":"red"},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"None","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger sw.kit set 0"}},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"Miner","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger sw.kit set 1"}},{"text":"\\n","color":"reset"},{"text":"\\u2022 ","color":"dark_aqua"},{"text":"Witch","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger sw.kit set 2"}},{"text":"\\n","color":"reset"},{"text":"\\u2022 ","color":"dark_aqua"},{"text":"Nurse","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger sw.kit set 3"}},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"Marksman","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger sw.kit set 4"}},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"Armourer","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger sw.kit set 5"}},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"Summoner","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger sw.kit set 6"}},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"Farmer","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger sw.kit set 7"}},{"text":"\\n\\u2022 ","color":"dark_aqua"},{"text":"Fisherman","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger sw.kit set 8"}}]'],title:"Kit Selector",author:"Nixinova",display:{Name:'"\\u00A7eKit Selector"',Lore:['"\\u00A7aSelect a kit"']},HideFlags:127}
execute in skywars:skywars run item replace entity @a[team=!spectator,x=25,y=138,z=1,distance=..11] hotbar.4 with air
execute in skywars:skywars run item replace entity @a[team=!spectator,x=25,y=138,z=1,distance=..11] hotbar.5 with written_book{pages:['[{"text":"\\u00A7cChoose a cage:\\u00A7r\\n"},{"text":"\\n\\u2022 Default","color":"reset","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 0"}},{"text":"\\n\\u2022 None","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 1"}},{"text":"\\n\\u2022 Glass: "},{"text":"\\u25a0","color":"blue","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 2"}},{"text":"\\u25a0","color":"green","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 3"}},{"text":"\\u25a0","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 4"}},{"text":"\\u25a0","color":"red","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 5"}},{"text":"\\u25a0","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 6"}},{"text":"\\u25a0","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 7"}},{"text":"\\u25a0","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 8"}},{"text":"\\u25a0","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 9"}},{"text":"\\u25a0","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 10"}},{"text":"\\u25a0","color":"black","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 11"}},{"text":"\\n\\u2022 Iron","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 12"}},{"text":"\\n\\u2022 Wood","clickEvent":{"action":"run_command","value":"/trigger sw.cage set 13"}}]'],title:"Cage Selector",author:"Nixinova",display:{Name:'"\\u00A7eCage Selector"',Lore:['"\\u00A7aChoose a cage"']},HideFlags:127}
execute in skywars:skywars run item replace entity @a[team=!spectator,x=25,y=138,z=1,distance=..11] hotbar.6 with air
execute in skywars:skywars run item replace entity @a[team=!spectator,x=25,y=138,z=1,distance=..11] hotbar.7 with air
execute in skywars:skywars run item replace entity @a[team=!spectator,x=25,y=138,z=1,distance=..11] hotbar.8 with air

# Lobby commands
execute in skywars:skywars run kill @e[type=item,x=25,y=138,z=1,distance=..11]
execute in skywars:skywars run effect give @a[x=25,y=138,z=1,distance=..11,nbt={Dimension:"skywars:skywars"}] minecraft:instant_health 1 10 true
execute in skywars:skywars run effect give @a[x=25,y=138,z=1,distance=..11,nbt={Dimension:"skywars:skywars"}] minecraft:saturation 1 10 true

# Death commands
team join spectator @a[team=playing,scores={sw.deaths=1..},nbt={Dimension:"skywars:skywars"}]
gamemode spectator @a[team=spectator,nbt={Dimension:"skywars:skywars"}]

# TODO: Instantly kill players if they fall below y=0

# Auto ignite TNT when placed
# TODO: Add settings to enable/disable auto igniting TNT
execute as @a[team=playing,nbt={Dimension:"skywars:skywars"}] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:command_block{auto:1b,Command:"function skywars:game/summon_tnt"} replace minecraft:tnt

# Auto convert raw materials to ingots
execute in skywars:skywars run execute as @e[type=item,name="Raw Iron",distance=0..] run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute in skywars:skywars run execute as @e[type=item,name="Raw Gold",distance=0..] run data modify entity @s Item.id set value "minecraft:gold_ingot"
execute in skywars:skywars run execute as @e[type=item,name="Raw Copper",distance=0..] run data modify entity @s Item.id set value "minecraft:copper_ingot"
execute in skywars:skywars run execute as @e[type=item,name="Ancient Debris",distance=0..] run data modify entity @s Item.id set value "minecraft:netherite_ingot"
