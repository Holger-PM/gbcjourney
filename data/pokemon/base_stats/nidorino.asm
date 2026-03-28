	db DEX_NIDORINO   ; Pokedex ID

; --- Base Stats ---
	db  61            ; HP
	db  72            ; Attack
	db  57            ; Defense
	db  65            ; Speed
	db  55            ; Special

; --- Types & Training ---
	db POISON         ; Type 1
	db POISON         ; Type 2
	db 120            ; Catch rate
	db 118            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/nidorino.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/nidorino.pic", 0, 1   ; Sprite dimensions
ENDC
	dw NidorinoPicFront, NidorinoPicBack

; --- Moves & Growth ---
	db LEER, TACKLE, NO_MOVE, NO_MOVE              ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

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
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE
; end

	db BANK(NidorinoPicFront)