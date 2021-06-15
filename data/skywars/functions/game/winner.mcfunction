
#> TODO: Delay TP of winner, summon fireworks

execute as @a[team=playing,nbt={Dimension:"skywars:skywars"}] unless entity @s[scores={sw.deaths=1..}] run tag @s add winner
scoreboard players add @a[tag=winner] sw.wins 1
scoreboard players set @a sw.deaths 0

tellraw @a[nbt={Dimension:"skywars:skywars"}] ["",{"selector":"@a[tag=winner]","color":"green"},{"text":" has won!","color":"green"}]
title @a[nbt={Dimension:"skywars:skywars"}] title {"selector":"@a[tag=winner]","color":"green"}
title @a[nbt={Dimension:"skywars:skywars"}] subtitle {"text":"has won!","color":"green"}

tag @a[tag=winner] remove winner
clear @a[nbt={Dimension:"skywars:skywars"}]
team join lobby @a[nbt={Dimension:"skywars:skywars"}]
gamemode adventure @a[nbt={Dimension:"skywars:skywars"}]
execute in skywars:skywars run tp @a[nbt={Dimension:"skywars:skywars"}] 26 139 0
summon firework_rocket 26.5 139 0.5 {LifeTime:6,FireworksItem:{id:firework_rocket,Count:3,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;1973019,11743532],FadeColors:[I;1973019,8073150]}]}}}}