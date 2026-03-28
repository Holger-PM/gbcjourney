	db DEX_NIDORINA   ; Pokedex ID

; --- Base Stats ---
	db  70            ; HP
	db  62            ; Attack
	db  67            ; Defense
	db  56            ; Speed
	db  55            ; Special

; --- Types & Training ---
	db POISON         ; Type 1
	db POISON         ; Type 2
	db 120            ; Catch rate
	db 117            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/nidorina.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/nidorina.pic", 0, 1   ; Sprite dimensions
ENDC
	dw NidorinaPicFront, NidorinaPicBack

; --- Moves & Growth ---
	db GROWL, TACKLE, SCRATCH, NO_MOVE             ; Level 1 learnset
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

	db BANK(NidorinaPicFront)