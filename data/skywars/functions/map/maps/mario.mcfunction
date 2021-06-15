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

## Player islands (mario)

execute in skywars:skywars run setblock 26 91 60 structure_block{mode:LOAD,name:"skywars:mario-island-player-1",posX:-6,posY:-32,posZ:-7}
execute in skywars:skywars run setblock 26 92 60 redstone_block
execute in skywars:skywars run fill 26 91 60 26 92 60 air

execute in skywars:skywars run setblock -34 91 0 structure_block{mode:LOAD,name:"skywars:mario-island-player-1",posX:7,posY:-32,posZ:-6,rotation:"CLOCKWISE_90"}
execute in skywars:skywars run setblock -34 92 0 redstone_block
execute in skywars:skywars run fill -34 91 0 -34 92 0 air

execute in skywars:skywars run setblock 26 91 -60 structure_block{mode:LOAD,name:"skywars:mario-island-player-1",posX:6,posY:-32,posZ:7,rotation:"CLOCKWISE_180"}
execute in skywars:skywars run setblock 26 92 -60 redstone_block
execute in skywars:skywars run fill 26 91 -60 26 92 -60 air

execute in skywars:skywars run setblock 86 91 0 structure_block{mode:LOAD,name:"skywars:mario-island-player-1",posX:-7,posY:-32,posZ:6,rotation:"COUNTERCLOCKWISE_90"}
execute in skywars:skywars run setblock 86 92 0 redstone_block
execute in skywars:skywars run fill 86 91 0 86 92 0 air

## Player islands (flower)

execute in skywars:skywars run setblock 70 88 44 structure_block{mode:LOAD,name:"skywars:mario-island-player-3",posX:-7,posY:-29,posZ:-7}
execute in skywars:skywars run setblock 70 89 44 redstone_block
execute in skywars:skywars run fill 70 88 44 70 89 44 air

execute in skywars:skywars run setblock -18 88 44 structure_block{mode:LOAD,name:"skywars:mario-island-player-3",posX:7,posY:-29,posZ:-7,rotation:"CLOCKWISE_90"}
execute in skywars:skywars run setblock -18 89 44 redstone_block
execute in skywars:skywars run fill -18 88 44 -18 89 44 air

execute in skywars:skywars run setblock -18 88 -44 structure_block{mode:LOAD,name:"skywars:mario-island-player-3",posX:7,posY:-29,posZ:7,rotation:"CLOCKWISE_180"}
execute in skywars:skywars run setblock -18 89 -44 redstone_block
execute in skywars:skywars run fill -18 88 -44 -18 89 -44 air

execute in skywars:skywars run setblock 70 88 -44 structure_block{mode:LOAD,name:"skywars:mario-island-player-3",posX:-7,posY:-29,posZ:7,rotation:"COUNTERCLOCKWISE_90"}
execute in skywars:skywars run setblock 70 89 -44 redstone_block
execute in skywars:skywars run fill 70 88 -44 70 89 -44 air

## Player islands (hut)

execute in skywars:skywars run setblock 1 81 57 structure_block{mode:LOAD,name:"skywars:mario-island-player-2",posX:-6,posY:-22,posZ:-6}
execute in skywars:skywars run setblock 1 82 57 redstone_block
execute in skywars:skywars run fill 1 81 57 1 82 57 air

execute in skywars:skywars run setblock 1 81 -57 structure_block{mode:LOAD,name:"skywars:mario-island-player-2",posX:6,posY:-22,posZ:-6,rotation:"CLOCKWISE_90"}
execute in skywars:skywars run setblock 1 82 -57 redstone_block
execute in skywars:skywars run fill 1 81 -57 1 82 -57 air

execute in skywars:skywars run setblock 51 81 -57 structure_block{mode:LOAD,name:"skywars:mario-island-player-2",posX:6,posY:-22,posZ:6,rotation:"CLOCKWISE_180"}
execute in skywars:skywars run setblock 51 82 -57 redstone_block
execute in skywars:skywars run fill 51 81 -57 51 82 -57 air

execute in skywars:skywars run setblock 51 81 57 structure_block{mode:LOAD,name:"skywars:mario-island-player-2",posX:-6,posY:-22,posZ:6,rotation:"COUNTERCLOCKWISE_90"}
execute in skywars:skywars run setblock 51 82 57 redstone_block
execute in skywars:skywars run fill 51 81 57 51 82 57 air

execute in skywars:skywars run setblock 83 81 25 structure_block{mode:LOAD,name:"skywars:mario-island-player-2",posX:-6,posY:-22,posZ:-6}
execute in skywars:skywars run setblock 83 82 25 redstone_block
execute in skywars:skywars run fill 83 81 25 83 82 25 air

execute in skywars:skywars run setblock 83 81 -25 structure_block{mode:LOAD,name:"skywars:mario-island-player-2",posX:6,posY:-22,posZ:-6,rotation:"CLOCKWISE_90"}
execute in skywars:skywars run setblock 83 82 -25 redstone_block
execute in skywars:skywars run fill 83 81 -25 83 82 -25 air

execute in skywars:skywars run setblock -31 81 -25 structure_block{mode:LOAD,name:"skywars:mario-island-player-2",posX:6,posY:-22,posZ:6,rotation:"CLOCKWISE_180"}
execute in skywars:skywars run setblock -31 82 -25 redstone_block
execute in skywars:skywars run fill -31 81 -25 -31 82 -25 air

execute in skywars:skywars run setblock -31 81 25 structure_block{mode:LOAD,name:"skywars:mario-island-player-2",posX:-6,posY:-22,posZ:6,rotation:"COUNTERCLOCKWISE_90"}
execute in skywars:skywars run setblock -31 82 25 redstone_block
execute in skywars:skywars run fill -31 81 25 -31 82 25 air


### REFERENCE ###

# main island
# center (top) = 355 48 -107
# size = 25 31 25

# player island 1 (mario) - spawn -2 from center block
# center (spawn) = 355.5 55 -46.5
# center (block) = 355 54 -47 (0 6 60)
# size = 13 32 13

# player island 2 (hut)
# center (spawn) = 330.5 45 -49.5
# center (block) = 330 44 -50 (-25 -4 57)
# size = 13 22 13

# player island 3 (plant)
# center (spawn) = 311.5 52 -64.5
# center (block) = 311 51 -65 (44 3 42)
# size = 15 29 15

# star 1 (glowstone)
# center (chest) = 330 31 -82 (25 17 25)
# size = 8 2 9

# star 2 (yellow)
# center (chest) = 318 31 -107 (-37 -17 0)
# size = 8 2 9