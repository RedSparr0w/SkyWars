# TODO: multiple maps

# Load our map
function skywars:map/maps/goldrush

title @a[nbt={Dimension:"skywars:skywars"}] actionbar [{"text":"Loading map: ","color":"yellow"},{"text":"100% complete","color":"green"}]

execute in skywars:skywars run kill @e[type=item,distance=..500]