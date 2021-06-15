#---------------------------------
#                                 
#      SKYWARS : GOLD RUSH        
#          by Nixinova            
#                                 
#---------------------------------

### MAP LOADING ###

# Western Middle

#  North-east section
execute in skywars:skywars run setblock 5 73 -3 structure_block{mode:LOAD,name:"skywars:_midw-ne",posX:-4,posY:-16,posZ:-8}
execute in skywars:skywars run setblock 5 74 -3 redstone_block
execute in skywars:skywars run fill 5 73 -3 5 74 -3 air

#  South-east section
execute in skywars:skywars run setblock 5 73 5 structure_block{mode:LOAD,name:"skywars:_midw-se",posX:-4,posY:-16,posZ:-4}
execute in skywars:skywars run setblock 5 74 5 redstone_block
execute in skywars:skywars run fill 5 73 5 5 74 5 air

#  South-west section
execute in skywars:skywars run setblock -3 73 5 structure_block{mode:LOAD,name:"skywars:_midw-sw",posX:-8,posY:-16,posZ:-4}
execute in skywars:skywars run setblock -3 74 5 redstone_block
execute in skywars:skywars run fill -3 73 5 -3 74 5 air

#  North-west section
execute in skywars:skywars run setblock -3 73 -3 structure_block{mode:LOAD,name:"skywars:_midw-nw",posX:-8,posY:-16,posZ:-8}
execute in skywars:skywars run setblock -3 74 -3 redstone_block
execute in skywars:skywars run fill -3 73 -3 -3 74 -3 air

#  Bottom section
execute in skywars:skywars run setblock -1 51 1 structure_block{mode:LOAD,name:"skywars:_midw-b",posX:-7,posY:1,posZ:-9}
execute in skywars:skywars run setblock -1 50 1 redstone_block
execute in skywars:skywars run fill -1 50 1 -1 51 1 air


# Eastern Middle

#  North-east section
execute in skywars:skywars run setblock 55 73 -3 structure_block{mode:LOAD,name:"skywars:_mide-ne",posX:-2,posY:-16,posZ:-7}
execute in skywars:skywars run setblock 55 74 -3 redstone_block
execute in skywars:skywars run fill 55 73 -3 55 74 -3 air

#  South-east section
execute in skywars:skywars run setblock 55 73 5 structure_block{mode:LOAD,name:"skywars:_mide-se",posX:-2,posY:-16,posZ:-3}
execute in skywars:skywars run setblock 55 74 5 redstone_block
execute in skywars:skywars run fill 55 73 5 55 74 5 air

#  South-west section
execute in skywars:skywars run setblock 47 73 5 structure_block{mode:LOAD,name:"skywars:_mide-sw",posX:-6,posY:-16,posZ:-3}
execute in skywars:skywars run setblock 47 74 5 redstone_block
execute in skywars:skywars run fill 47 73 5 47 74 5 air

#  North-west section
execute in skywars:skywars run setblock 47 73 -3 structure_block{mode:LOAD,name:"skywars:_mide-nw",posX:-6,posY:-16,posZ:-7}
execute in skywars:skywars run setblock 47 74 -3 redstone_block
execute in skywars:skywars run fill 47 73 -3 47 74 -3 air

#  Bottom section
execute in skywars:skywars run setblock 51 52 0 structure_block{mode:LOAD,name:"skywars:_mide-b",posX:-6,posY:1,posZ:-6}
execute in skywars:skywars run setblock 51 51 0 redstone_block
execute in skywars:skywars run fill 51 51 0 51 52 0 air


# Bridge

#  Eastern section
execute in skywars:skywars run setblock 25 68 0 structure_block{mode:LOAD,name:"skywars:bridge-e",posX:4,posY:-12,posZ:-2}
execute in skywars:skywars run setblock 25 69 0 redstone_block
execute in skywars:skywars run fill 25 68 0 25 69 0 air

#  Western section
execute in skywars:skywars run setblock 24 68 0 structure_block{mode:LOAD,name:"skywars:bridge-w",posX:-11,posY:-12,posZ:-2}
execute in skywars:skywars run setblock 24 69 0 redstone_block
execute in skywars:skywars run fill 24 68 0 24 69 0 air


# Islands

#  North-facing islands

#   Island 1
execute in skywars:skywars run setblock 61 77 26 structure_block{mode:LOAD,name:"skywars:isle_n1",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock 61 78 26 redstone_block
#execute in skywars:skywars run fill 61 77 26 61 78 26 air

#   Island 2
execute in skywars:skywars run setblock 41 77 26 structure_block{mode:LOAD,name:"skywars:isle_n2",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock 41 78 26 redstone_block
#execute in skywars:skywars run fill 41 77 26 41 78 26 air

#   Island 3
execute in skywars:skywars run setblock 10 77 26 structure_block{mode:LOAD,name:"skywars:isle_n3",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock 10 78 26 redstone_block
#execute in skywars:skywars run fill 10 77 26 10 78 26 air

#   Island 4
execute in skywars:skywars run setblock -10 77 26 structure_block{mode:LOAD,name:"skywars:isle_n4",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock -10 78 26 redstone_block
#execute in skywars:skywars run fill -10 77 26 -10 78 26 air

#  East-facing islands

#   Island 5
execute in skywars:skywars run setblock -27 77 11 structure_block{mode:LOAD,name:"skywars:isle_e1",posX:-6,posY:-18,posZ:-5}
execute in skywars:skywars run setblock -27 78 11 redstone_block
#execute in skywars:skywars run fill -27 77 11 -27 78 11 air

#   Island 6
execute in skywars:skywars run setblock -27 77 -11 structure_block{mode:LOAD,name:"skywars:isle_e2",posX:-6,posY:-18,posZ:-5}
execute in skywars:skywars run setblock -27 78 -11 redstone_block
#execute in skywars:skywars run fill -27 77 -11 -27 78 -11 air

#  South-facing islands

#   Island 7
execute in skywars:skywars run setblock -10 77 -27 structure_block{mode:LOAD,name:"skywars:isle_s1",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock -10 78 -27 redstone_block
#execute in skywars:skywars run fill -10 77 -27 -10 78 -27 air

#   Island 8
execute in skywars:skywars run setblock 11 77 -27 structure_block{mode:LOAD,name:"skywars:isle_s2",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock 11 78 -27 redstone_block
#execute in skywars:skywars run fill 11 77 -27 11 78 -27 air

#   Island 9
execute in skywars:skywars run setblock 42 77 -27 structure_block{mode:LOAD,name:"skywars:isle_s3",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock 42 78 -27 redstone_block
#execute in skywars:skywars run fill 42 77 -27 42 78 -27 air

#   Island 10
execute in skywars:skywars run setblock 62 77 -27 structure_block{mode:LOAD,name:"skywars:isle_s4",posX:-5,posY:-18,posZ:-6}
execute in skywars:skywars run setblock 62 78 -27 redstone_block
#execute in skywars:skywars run fill 62 77 -27 62 78 -27 air

#  West-facing islands

#   Island 11
execute in skywars:skywars run setblock 78 77 -11 structure_block{mode:LOAD,name:"skywars:isle_w1",posX:-6,posY:-18,posZ:-5}
execute in skywars:skywars run setblock 78 78 -11 redstone_block
#execute in skywars:skywars run fill 78 77 -11 78 78 -11 air

#   Island 12
execute in skywars:skywars run setblock 78 77 11 structure_block{mode:LOAD,name:"skywars:isle_w2",posX:-6,posY:-18,posZ:-5}
execute in skywars:skywars run setblock 78 78 11 redstone_block
#execute in skywars:skywars run fill 78 77 11 78 78 11 air



### PLAYER SPAWNING ###

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