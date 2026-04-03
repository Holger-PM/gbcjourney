	db DEX_STARYU     ; Pokedex ID

; --- Base Stats ---
	db  30            ; HP
	db  45            ; Attack
	db  55            ; Defense
	db  85            ; Speed
	db  70            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db 225            ; Catch rate
	db 106            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/staryu.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/staryu.pic", 0, 1   ; Sprite dimensions
ENDC
	dw StaryuPicFront, StaryuPicBack

; --- Moves & Growth ---
	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	PSYCHIC_M,    \
	TELEPORT,     \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	THUNDER_WAVE, \
	PSYWAVE,      \
	TRI_ATTACK,   \
	SUBSTITUTE,   \
	SURF,         \
	FLASH
; end

	db BANK(StaryuPicFront)