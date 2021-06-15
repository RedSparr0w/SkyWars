#---------------------------------
#
#         SKYWARS : MARIO
#          by ZonaGamer
#
# https://www.planetminecraft.com/project/sky-wars-mario/
#
#---------------------------------


### MAP LOADING ###

## Main island

execute in skywars:skywars run setblock 26 85 0 structure_block{mode:LOAD,name:"skywars:mario-island-main",posX:-12,posY:-31,posZ:-13}
execute in skywars:skywars run setblock 26 86 0 redstone_block
execute in skywars:skywars run fill 26 85 0 26 86 0 air

## Yellow stars

execute in skywars:skywars run setblock 63 69 0 structure_block{mode:LOAD,name:"skywars:mario-island-star-2",posX:-4,posY:-2,posZ:-4}
execute in skywars:skywars run setblock 63 70 0 redstone_block
execute in skywars:skywars run fill 63 69 0 63 70 0 air

execute in skywars:skywars run setblock 26 69 37 structure_block{mode:LOAD,name:"skywars:mario-island-star-2",posX:4,posY:-2,posZ:-4,rotation:"CLOCKWISE_90"}
execute in skywars:skywars run setblock 26 70 37 redstone_block
execute in skywars:skywars run fill 26 69 37 26 70 37 air

execute in skywars:skywars run setblock -11 69 0 structure_block{mode:LOAD,name:"skywars:mario-island-star-2",posX:4,posY:-2,posZ:4,rotation:"CLOCKWISE_180"}
execute in skywars:skywars run setblock -11 70 0 redstone_block
execute in skywars:skywars run fill -11 69 0 -11 70 0 air

execute in skywars:skywars run setblock 26 69 -37 structure_block{mode:LOAD,name:"skywars:mario-island-star-2",posX:-4,posY:-2,posZ:4,rotation:"COUNTERCLOCKWISE_90"}
execute in skywars:skywars run setblock 26 70 -37 redstone_block
execute in skywars:skywars run fill 26 69 37 26 70 -37 air

## Glowstone stars

execute in skywars:skywars run setblock 51 69 25 structure_block{mode:LOAD,name:"skywars:mario-island-star-1",posX:-3,posY:-2,posZ:-4}
execute in skywars:skywars run setblock 51 70 25 redstone_block
execute in skywars:skywars run fill 51 69 25 51 70 25 air

execute in skywars:skywars run setblock 1 69 25 structure_block{mode:LOAD,name:"skywars:mario-island-star-1",posX:4,posY:-2,posZ:-3,rotation:"CLOCKWISE_90"}
execute in skywars:skywars run setblock 1 70 25 redstone_block
execute in skywars:skywars run fill 1 69 25 1 70 25 air

execute in skywars:skywars run setblock 1 69 -25 structure_block{mode:LOAD,name:"skywars:mario-island-star-1",posX:3,posY:-2,posZ:4,rotation:"CLOCKWISE_180"}
execute in skywars:skywars run setblock 1 70 -25 redstone_block
execute in skywars:skywars run fill 1 69 -25 1 70 -25 air

execute in skywars:skywars run setblock 51 69 -25 structure_block{mode:LOAD,name:"skywars:mario-island-star-1",posX:-4,posY:-2,posZ:3,rotation:"COUNTERCLOCKWISE_90"}
execute in skywars:skywars run setblock 51 70 -25 redstone_block
execute in skywars:skywars run fill 51 69 -25 51 70 -25 air


### REFERENCE ###

# main island
# center (top) = 355 48 -107
# size = 25 31 25

# player island 1 (mario) mario-island-player-1
# center (spawn) = 354.5 55 -46.5
# center (block) = 354 54 -47
# size = 13 32 13

# player island 2 (hut)
# center (spawn) = 330.5 45 -49.5
# center (block) = 330 44 -50
# size = 13 22 13

# player island 3 (plant)
# center (spawn) = 311.5 52 -64.5
# center (block) = 311 51 -65
# size = 15 29 15

# star 1 (glowstone)
# center (chest) = 330 31 -82 (25 17 25)
# size = 8 2 9

# star 2 (yellow)
# center (chest) = 318 31 -107 (37 17 0)
# size = 8 2 9