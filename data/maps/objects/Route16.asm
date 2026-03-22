	object_const_def
	const_export ROUTE16_BIKER1
	const_export ROUTE16_BIKER2
	const_export ROUTE16_BIKER3
	const_export ROUTE16_BIKER4
	const_export ROUTE16_BIKER5
	const_export ROUTE16_BIKER6
	const_export ROUTE16_SNORLAX

Route16_Object:
	db $f ; border block

	def_warp_events
	warp_event 17, 16, ROUTE_16_GATE_1F, 1
	warp_event 17, 17, ROUTE_16_GATE_1F, 2
	warp_event 24, 16, ROUTE_16_GATE_1F, 3
	warp_event 24, 17, ROUTE_16_GATE_1F, 4
	warp_event 19, 13, ROUTE_16_GATE_1F, 5
	warp_event 19, 14, ROUTE_16_GATE_1F, 6
	warp_event 22, 13, ROUTE_16_GATE_1F, 7
	warp_event 22, 14, ROUTE_16_GATE_1F, 8
	warp_event  5,  5, ROUTE_16_FLY_HOUSE, 1

	def_bg_events
	bg_event 27, 17, TEXT_ROUTE16_CYCLING_ROAD_SIGN
	bg_event  5, 23, TEXT_ROUTE16_SIGN

	def_object_events
	object_event 17, 18, SPRITE_BIKER, STAY, LEFT, TEXT_ROUTE16_BIKER1, OPP_BIKER, 5
	object_event 14, 19, SPRITE_BIKER, STAY, RIGHT, TEXT_ROUTE16_BIKER2, OPP_CUE_BALL, 1
	object_event 11, 18, SPRITE_BIKER, STAY, UP, TEXT_ROUTE16_BIKER3, OPP_CUE_BALL, 2
	object_event  9, 17, SPRITE_BIKER, STAY, LEFT, TEXT_ROUTE16_BIKER4, OPP_BIKER, 6
	object_event  6, 16, SPRITE_BIKER, STAY, RIGHT, TEXT_ROUTE16_BIKER5, OPP_CUE_BALL, 3
	object_event  3, 18, SPRITE_BIKER, STAY, RIGHT, TEXT_ROUTE16_BIKER6, OPP_BIKER, 7
	object_event 26, 16, SPRITE_SNORLAX, STAY, DOWN, TEXT_ROUTE16_SNORLAX

	def_warps_to ROUTE_16
