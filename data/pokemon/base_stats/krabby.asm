	db DEX_KRABBY     ; Pokedex ID

; --- Base Stats ---
	db  30            ; HP
	db 105            ; Attack
	db  90            ; Defense
	db  50            ; Speed
	db  25            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db 225            ; Catch rate
	db 115            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/krabby.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/krabby.pic", 0, 1   ; Sprite dimensions
ENDC
	dw KrabbyPicFront, KrabbyPicBack

; --- Moves & Growth ---
	db BUBBLE, LEER, NO_MOVE, NO_MOVE              ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	SWORDS_DANCE, \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	REST,         \
	SUBSTITUTE,   \
	CUT,          \
	SURF,         \
	STRENGTH
; end

	db BANK(KrabbyPicFront)