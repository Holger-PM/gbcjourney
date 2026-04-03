	db DEX_TENTACRUEL ; Pokedex ID

; --- Base Stats ---
	db  80            ; HP
	db  70            ; Attack
	db  65            ; Defense
	db 100            ; Speed
	db 120            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db POISON         ; Type 2
	db  60            ; Catch rate
	db 205            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/tentacruel.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/tentacruel.pic", 0, 1   ; Sprite dimensions
ENDC
	dw TentacruelPicFront, TentacruelPicBack

; --- Moves & Growth ---
	db WRAP, NO_MOVE, NO_MOVE, NO_MOVE              ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	SWORDS_DANCE, \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	HYPER_BEAM,   \
	RAGE,         \
	MEGA_DRAIN,   \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	CUT,          \
	SURF
; end

	db BANK(TentacruelPicFront)