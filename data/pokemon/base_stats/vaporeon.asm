	db DEX_VAPOREON   ; Pokedex ID

; --- Base Stats ---
	db 130            ; HP
	db  65            ; Attack
	db  60            ; Defense
	db  65            ; Speed
	db 110            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db  45            ; Catch rate
	db 196            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/vaporeon.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/vaporeon.pic", 0, 1   ; Sprite dimensions
ENDC
	dw VaporeonPicFront, VaporeonPicBack

; --- Moves & Growth ---
	db TACKLE, TAIL_WHIP, BUBBLE, NO_MOVE          ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	HYPER_BEAM,   \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	SURF
; end

	db BANK(VaporeonPicFront)
