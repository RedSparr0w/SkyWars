scoreboard players remove #countdown sw.dummy 1

execute if score #countdown sw.dummy matches 3 run title @a[team=playing,nbt={Dimension:"skywars:skywars"}] subtitle {"text":"3..","color":"yellow"}
execute if score #countdown sw.dummy matches 2 run title @a[team=playing,nbt={Dimension:"skywars:skywars"}] subtitle {"text":"2..","color":"yellow"}
execute if score #countdown sw.dummy matches 1 run title @a[team=playing,nbt={Dimension:"skywars:skywars"}] subtitle {"text":"1..","color":"yellow"}
execute if score #countdown sw.dummy matches 0 run title @a[team=playing,nbt={Dimension:"skywars:skywars"}] title {"text":"GO!","color":"green"}
execute if score #countdown sw.dummy matches 0 run title @a[team=playing,nbt={Dimension:"skywars:skywars"}] subtitle {"text":""}
execute if score #countdown sw.dummy matches 0 run execute as @a[team=playing,nbt={Dimension:"skywars:skywars"}] at @s run fill ~ ~ ~ ~ ~-3 ~ air

# Change to survival mode
execute if score #countdown sw.dummy matches 0 run gamemode survival @a[team=playing,nbt={Dimension:"skywars:skywars"}]

execute unless score #countdown sw.dummy matches 0 run schedule function skywars:game/countdown 1s