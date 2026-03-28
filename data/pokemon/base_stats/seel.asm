	db DEX_SEEL       ; Pokedex ID

; --- Base Stats ---
	db  65            ; HP
	db  45            ; Attack
	db  55            ; Defense
	db  45            ; Speed
	db  70            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db 190            ; Catch rate
	db 100            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/seel.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/seel.pic", 0, 1   ; Sprite dimensions
ENDC
	dw SeelPicFront, SeelPicBack

; --- Moves & Growth ---
	db HEADBUTT, NO_MOVE, NO_MOVE, NO_MOVE          ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	HORN_DRILL,   \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	PAY_DAY,      \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	SURF,         \
	STRENGTH
; end

	db BANK(SeelPicFront)