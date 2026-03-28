	db DEX_STARMIE    ; Pokedex ID

; --- Base Stats ---
	db  60            ; HP
	db  75            ; Attack
	db  85            ; Defense
	db 115            ; Speed
	db 100            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db PSYCHIC_TYPE   ; Type 2
	db  60            ; Catch rate
	db 207            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/starmie.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/starmie.pic", 0, 1   ; Sprite dimensions
ENDC
	dw StarmiePicFront, StarmiePicBack

; --- Moves & Growth ---
	db CONFUSION, SWIFT, BUBBLEBEAM, NO_MOVE        ; Level 1 learnset
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
	HYPER_BEAM,   \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	PSYCHIC_M,    \
	TELEPORT,     \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
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

	db BANK(StarmiePicFront)