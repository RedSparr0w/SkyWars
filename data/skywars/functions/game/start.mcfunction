#---------------------------------
#                                 
#      SKYWARS : GOLD RUSH        
#          by Nixinova            
#                                 
#      Game starting commands      
#                                 
#---------------------------------

tellraw @a[nbt={Dimension:"skywars:skywars"}] {"text":"Game starting!","color":"green"}
title @a[nbt={Dimension:"skywars:skywars"}] title {"text":"Game starting!","color":"green"}

team join playing @a[team=ready,nbt={Dimension:"skywars:skywars"}]
scoreboard players reset @a sw.kills
clear @a[team=playing]
effect clear @a[team=playing]
gamemode adventure @a[team=playing]
effect give @a[team=playing] minecraft:resistance 15 4

#tellraw @a[team=playing,nbt={Dimension:"skywars:skywars"}] {"text":"Resetting map, expect lag...","color":"red","italic":true}
title @a[team=playing,nbt={Dimension:"skywars:skywars"}] actionbar {"text":"Resetting map","color":"red"}
function skywars:map/clear
title @a[team=playing,nbt={Dimension:"skywars:skywars"}] actionbar {"text":"Map cleared.","color":"green"}
title @a[team=playing,nbt={Dimension:"skywars:skywars"}] actionbar {"text":"Loading new map...","color":"yellow"}
function skywars:map/load
title @a[team=playing,nbt={Dimension:"skywars:skywars"}] actionbar {"text":"Map loaded.","color":"green"}

# Starting positions
execute in skywars:skywars run tp @a[tag=sw1] 61 74 26
execute in skywars:skywars run tp @a[tag=sw2] 42 74 -27
execute in skywars:skywars run tp @a[tag=sw3] 10 74 26
execute in skywars:skywars run tp @a[tag=sw4] -10 74 -27
execute in skywars:skywars run tp @a[tag=sw5] 78 74 11
execute in skywars:skywars run tp @a[tag=sw6] -27 74 -11
execute in skywars:skywars run tp @a[tag=sw7] 62 74 -27
execute in skywars:skywars run tp @a[tag=sw8] -10 74 26
execute in skywars:skywars run tp @a[tag=sw9] 41 74 26
execute in skywars:skywars run tp @a[tag=sw10] 11 74 -27
execute in skywars:skywars run tp @a[tag=sw11] 78 74 -11
execute in skywars:skywars run tp @a[tag=sw12] -27 74 11

# Tag cleanup
tag @a[team=playing] remove sw1
tag @a[team=playing] remove sw2
tag @a[team=playing] remove sw3
tag @a[team=playing] remove sw4
tag @a[team=playing] remove sw5
tag @a[team=playing] remove sw6
tag @a[team=playing] remove sw7
tag @a[team=playing] remove sw8
tag @a[team=playing] remove sw9
tag @a[team=playing] remove sw10
tag @a[team=playing] remove sw11
tag @a[team=playing] remove sw12

# Cages
execute in skywars:skywars run execute as @a[team=playing,nbt={Dimension:"skywars:skywars"}] at @s run setblock ~ 77 ~ glass
execute in skywars:skywars run execute as @a[scores={sw.cage=0}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 glass replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=1}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 barrier replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=2}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 light_blue_stained_glass replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=3}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 lime_stained_glass replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=4}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 cyan_stained_glass replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=5}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 red_stained_glass replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=6}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 pink_stained_glass replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=7}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 yellow_stained_glass replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=8}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 blue_stained_glass replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=9}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 green_stained_glass replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=10}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 gray_stained_glass replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=11}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 black_stained_glass replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=12}] at @s run fill ~ ~3 ~ ~ ~-2 ~ iron_block replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=12}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 iron_trapdoor replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=13}] at @s run fill ~ ~3 ~ ~ ~-2 ~ oak_wood replace glass
execute in skywars:skywars run execute as @a[scores={sw.cage=13}] at @s run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 oak_leaves[persistent=true] replace glass

# Miner
give @a[team=playing,scores={sw.kit=1}] iron_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:3}]}
give @a[team=playing,scores={sw.kit=1}] stone 10

# Witch
give @a[team=playing,scores={sw.kit=2}] splash_potion{Potion:harming} 2
give @a[team=playing,scores={sw.kit=2}] splash_potion{Potion:weakness}
give @a[team=playing,scores={sw.kit=2}] splash_potion{Potion:slowness}

# Nurse
give @a[team=playing,scores={sw.kit=3}] splash_potion{Potion:healing}
give @a[team=playing,scores={sw.kit=3}] splash_potion{Potion:strong_healing}
give @a[team=playing,scores={sw.kit=3}] splash_potion{Potion:regeneration}
give @a[team=playing,scores={sw.kit=3}] splash_potion{Potion:strong_regeneration}

# Marksman
give @a[team=playing,scores={sw.kit=4}] bow
give @a[team=playing,scores={sw.kit=4}] arrow 8

# Armourer
give @a[team=playing,scores={sw.kit=5}] chainmail_helmet
give @a[team=playing,scores={sw.kit=5}] chainmail_chestplate
give @a[team=playing,scores={sw.kit=5}] chainmail_leggings
give @a[team=playing,scores={sw.kit=5}] chainmail_boots

# Summoner
give @a[team=playing,scores={sw.kit=6}] creeper_spawn_egg
give @a[team=playing,scores={sw.kit=6}] spider_spawn_egg
give @a[team=playing,scores={sw.kit=6}] skeleton_spawn_egg

# Farmer
give @a[team=playing,scores={sw.kit=7}] stone_hoe{Enchantments:[{id:"minecraft:sharpness",lvl:3}]}
give @a[team=playing,scores={sw.kit=7}] bread 8

# Fisherman
give @a[team=playing,scores={sw.kit=8}] fishing_rod{Enchantments:[{id:"minecraft:knockback",lvl:1}]}
give @a[team=playing,scores={sw.kit=8}] cod 12

tellraw @a[team=playing,nbt={Dimension:"skywars:skywars"}] {"text":"Starting!","color":"yellow"}
execute as @a[team=playing,nbt={Dimension:"skywars:skywars"}] at @s run fill ~ ~ ~ ~ ~-3 ~ air

# Change to survival mode
gamemode survival @a[team=playing]