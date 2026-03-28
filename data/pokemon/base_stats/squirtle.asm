	db DEX_SQUIRTLE   ; Pokedex ID

; --- Base Stats ---
	db  44            ; HP
	db  48            ; Attack
	db  65            ; Defense
	db  43            ; Speed
	db  50            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db  45            ; Catch rate
	db  66            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/squirtle.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/squirtle.pic", 0, 1   ; Sprite dimensions
ENDC
	dw SquirtlePicFront, SquirtlePicBack

; --- Moves & Growth ---
	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE          ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	MEGA_PUNCH,   \
	MEGA_KICK,    \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	SUBMISSION,   \
	COUNTER,      \
	SEISMIC_TOSS, \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	SURF,         \
	STRENGTH
; end

	db BANK(SquirtlePicFront)