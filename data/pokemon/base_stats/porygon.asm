	db DEX_PORYGON    ; Pokedex ID

; --- Base Stats ---
	db  75            ; HP
	db  70            ; Attack
	db  70            ; Defense
	db  40            ; Speed
	db  95            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db NORMAL         ; Type 2
	db  45            ; Catch rate
	db 130            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/porygon.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/porygon.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PorygonPicFront, PorygonPicBack

; --- Moves & Growth ---
	db TACKLE, CONVERSION, NO_MOVE, NO_MOVE        ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
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
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	THUNDER_WAVE, \
	PSYWAVE,      \
	TRI_ATTACK,   \
	SUBSTITUTE,   \
	FLASH
; end

	db BANK(PorygonPicFront)