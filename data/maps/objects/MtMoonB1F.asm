MtMoonB1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event  5,  4, MT_MOON_1F, 2
	warp_event 17, 10, MT_MOON_B2F, 1
	warp_event 25,  8, MT_MOON_1F, 3
	warp_event 25, 14, MT_MOON_1F, 4
	warp_event 21, 16, MT_MOON_B2F, 2
	warp_event 13, 26, MT_MOON_B2F, 3
	warp_event 21,  2, MT_MOON_B2F, 4
	warp_event 25,  1, LAST_MAP, 3

	def_bg_events

	def_object_events

	def_warps_to MT_MOON_B1F
