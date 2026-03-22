SECTION "Tilesets 1", ROMX

IF SNOW
Overworld_GFX::     INCBIN "gfx/tilesets/overworld_snow.2bpp"
ELIF DEF(_GREEN)
Overworld_GFX::     INCBIN "gfx/tilesets/tilesets_rg/overworld.2bpp"
ELSE	
Overworld_GFX::     INCBIN "gfx/tilesets/overworld.2bpp"
ENDC

IF SNOW
Overworld_Block::   INCBIN "gfx/blocksets/overworld_snow.bst"
ELSE
Overworld_Block::   INCBIN "gfx/blocksets/overworld.bst"
ENDC


;RedsHouse1_GFX::
;RedsHouse2_GFX::    INCBIN "gfx/tilesets/reds_house.2bpp"
;RedsHouse1_Block::
;RedsHouse2_Block::  INCBIN "gfx/blocksets/reds_house.bst"

House_GFX::         INCBIN "gfx/tilesets/house.2bpp"
House_Block::       INCBIN "gfx/blocksets/house.bst"
Mansion_GFX::       INCBIN "gfx/tilesets/mansion.2bpp"
Mansion_Block::     INCBIN "gfx/blocksets/mansion.bst"
ShipPort_GFX::      INCBIN "gfx/tilesets/ship_port.2bpp"
ShipPort_Block::    INCBIN "gfx/blocksets/ship_port.bst"
Interior_GFX::      INCBIN "gfx/tilesets/interior.2bpp"
Interior_Block::    INCBIN "gfx/blocksets/interior.bst"

IF SNOW
Plateau_GFX::       INCBIN "gfx/tilesets/plateau_snow.2bpp"
ELSE
Plateau_GFX::       INCBIN "gfx/tilesets/plateau.2bpp"
ENDC

IF SNOW
Plateau_Block::      INCBIN "gfx/blocksets/plateau_snow.bst"
ELSE
Plateau_Block::     INCBIN "gfx/blocksets/plateau.bst"
ENDC


SECTION "Tilesets 2", ROMX

Dojo_GFX::
Gym_GFX::           INCBIN "gfx/tilesets/gym.2bpp"
Dojo_Block::
Gym_Block::         INCBIN "gfx/blocksets/gym.bst"

;Mart_GFX::
;Pokecenter_GFX::    INCBIN "gfx/tilesets/pokecenter.2bpp"
;Mart_Block::
;Pokecenter_Block::  INCBIN "gfx/blocksets/pokecenter.bst"

ForestGate_GFX::
Museum_GFX::
Gate_GFX::          INCBIN "gfx/tilesets/gate.2bpp"
ForestGate_Block::
Museum_Block::
Gate_Block::        INCBIN "gfx/blocksets/gate.bst"

IF SNOW
Forest_GFX::        INCBIN "gfx/tilesets/forest_snow.2bpp"
ELIF DEF(_GREEN)
Forest_GFX::        INCBIN "gfx/tilesets/tilesets_rg/forest.2bpp"
ELSE
Forest_GFX::        INCBIN "gfx/tilesets/forest.2bpp"
ENDC

IF SNOW
Forest_Block::      INCBIN "gfx/blocksets/forest_snow.bst"
ELSE
Forest_Block::      INCBIN "gfx/blocksets/forest.bst"
ENDC

Facility_GFX::      INCBIN "gfx/tilesets/facility.2bpp"
Facility_Block::    INCBIN "gfx/blocksets/facility.bst"


SECTION "Tilesets 3", ROMX

RedsHouse1_GFX::
RedsHouse2_GFX::    INCBIN "gfx/tilesets/reds_house.2bpp"
RedsHouse1_Block::
RedsHouse2_Block::  INCBIN "gfx/blocksets/reds_house.bst"

Cemetery_GFX::      INCBIN "gfx/tilesets/cemetery.2bpp"
Cemetery_Block::    INCBIN "gfx/blocksets/cemetery.bst"
Lobby_GFX::         INCBIN "gfx/tilesets/lobby.2bpp"
Lobby_Block::       INCBIN "gfx/blocksets/lobby.bst"
Ship_GFX::          INCBIN "gfx/tilesets/ship.2bpp"
Ship_Block::        INCBIN "gfx/blocksets/ship.bst"
Lab_GFX::           INCBIN "gfx/tilesets/lab.2bpp"
Lab_Block::         INCBIN "gfx/blocksets/lab.bst"
Club_GFX::          INCBIN "gfx/tilesets/club.2bpp"
Club_Block::        INCBIN "gfx/blocksets/club.bst"
Underground_GFX::   INCBIN "gfx/tilesets/underground.2bpp"
Underground_Block:: INCBIN "gfx/blocksets/underground.bst"

SECTION "Tilesets 4", ROMX

Mart_GFX::
Pokecenter_GFX::    INCBIN "gfx/tilesets/pokecenter.2bpp"
Mart_Block::
Pokecenter_Block::  INCBIN "gfx/blocksets/pokecenter.bst"

IF SNOW
Safari_GFX::        INCBIN "gfx/tilesets/safari_snow.2bpp"
ELSE
Safari_GFX::        INCBIN "gfx/tilesets/safari.2bpp"
ENDC

IF SNOW
Safari_Block::      INCBIN "gfx/blocksets/safari_snow.bst"
ELSE
Safari_Block::      INCBIN "gfx/blocksets/safari.bst"
ENDC

IF SNOW
Cavern_GFX::        INCBIN "gfx/tilesets/ice_cavern.2bpp"
ELSE
Cavern_GFX::        INCBIN "gfx/tilesets/cavern.2bpp"
ENDC
Cavern_Block::      INCBIN "gfx/blocksets/cavern.bst"

RockTunnel_GFX::	INCBIN "gfx/tilesets/rock_tunnel.2bpp"
RockTunnel_Block::	INCBIN "gfx/blocksets/rock_tunnel.bst"

OverworldM_GFX::	INCBIN "gfx/tilesets/overworld_m.2bpp"
OverworldM_Block::	INCBIN "gfx/blocksets/overworld_m.bst"






