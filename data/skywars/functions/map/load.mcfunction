# Load our map
execute if score #map sw.dummy matches 0 run function skywars:map/maps/goldrush
execute if score #map sw.dummy matches 1 run function skywars:map/maps/mario
execute if score #map sw.dummy matches 2 run function skywars:map/maps/nether_isle

title @a[nbt={Dimension:"skywars:skywars"}] actionbar [{"text":"Loading map: ","color":"yellow"},{"text":"100% complete","color":"green"}]

execute in skywars:skywars run kill @e[type=item,distance=..500]

execute store result score maximum sw.players if entity @e[tag=SkyWarsSpawnPoint]

