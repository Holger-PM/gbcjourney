	db DEX_VENOMOTH   ; Pokedex ID

; --- Base Stats ---
	db  70            ; HP
	db  65            ; Attack
	db  60            ; Defense
	db 100            ; Speed
	db  95            ; Special

; --- Types & Training ---
	db BUG            ; Type 1
	db POISON         ; Type 2
	db  75            ; Catch rate
	db 138            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/venomoth.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/venomoth.pic", 0, 1   ; Sprite dimensions
ENDC
	dw VenomothPicFront, VenomothPicBack

; --- Moves & Growth ---
	db TACKLE, DISABLE, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	RAZOR_WIND,   \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
	RAGE,         \
	MEGA_DRAIN,   \
	SOLARBEAM,    \
	PSYCHIC_M,    \
	TELEPORT,     \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	SWIFT,        \
	REST,         \
	PSYWAVE,      \
	SUBSTITUTE,   \
	FLASH
; end

	db BANK(VenomothPicFront)