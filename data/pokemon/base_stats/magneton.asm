	db DEX_MAGNETON   ; Pokedex ID

; --- Base Stats ---
	db  50            ; HP
	db  60            ; Attack
	db  95            ; Defense
	db  70            ; Speed
	db 120            ; Special

; --- Types & Training ---
	db ELECTRIC       ; Type 1
	db ELECTRIC       ; Type 2
	db  60            ; Catch rate
	db 161            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/magneton.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/magneton.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MagnetonPicFront, MagnetonPicBack

; --- Moves & Growth ---
	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	TELEPORT,     \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	SWIFT,        \
	REST,         \
	THUNDER_WAVE, \
	SUBSTITUTE,   \
	FLASH,        \
	TRI_ATTACK
; end

	db BANK(MagnetonPicFront)