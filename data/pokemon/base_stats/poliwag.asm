	db DEX_POLIWAG    ; Pokedex ID

; --- Base Stats ---
	db  40            ; HP
	db  50            ; Attack
	db  40            ; Defense
	db  90            ; Speed
	db  40            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db 195 ; 255      ; Catch rate
	db  77            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/poliwag.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/poliwag.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PoliwagPicFront, PoliwagPicBack

; --- Moves & Growth ---
	db DOUBLESLAP, NO_MOVE, NO_MOVE, NO_MOVE       ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

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
	RAGE,         \
	PSYCHIC_M,    \
	MIMIC,        \
	DOUBLE_TEAM,  \
	SKULL_BASH,   \
	REST,         \
	PSYWAVE,      \
	SUBSTITUTE,   \
	SURF,         \
	DREAM_EATER
; end

	db BANK(PoliwagPicFront)