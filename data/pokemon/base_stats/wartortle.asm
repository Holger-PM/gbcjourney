	db DEX_WARTORTLE  ; Pokedex ID

; --- Base Stats ---
	db  59            ; HP
	db  63            ; Attack
	db  80            ; Defense
	db  58            ; Speed
	db  65            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db  45            ; Catch rate
	db 143            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/wartortle.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/wartortle.pic", 0, 1   ; Sprite dimensions
ENDC
	dw WartortlePicFront, WartortlePicBack

; --- Moves & Growth ---
	db TACKLE, TAIL_WHIP, BUBBLE, NO_MOVE          ; Level 1 learnset
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
	DIG,          \
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

	db BANK(WartortlePicFront)
