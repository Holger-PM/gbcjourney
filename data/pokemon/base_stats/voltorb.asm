	db DEX_VOLTORB    ; Pokedex ID

; --- Base Stats ---
	db  40            ; HP
	db  30            ; Attack
	db  50            ; Defense
	db 100            ; Speed
	db  55            ; Special

; --- Types & Training ---
	db ELECTRIC       ; Type 1
	db ELECTRIC       ; Type 2
	db 190            ; Catch rate
	db 103            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/voltorb.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/voltorb.pic", 0, 1   ; Sprite dimensions
ENDC
	dw VoltorbPicFront, VoltorbPicBack

; --- Moves & Growth ---
	db TACKLE, SCREECH, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	TAKE_DOWN,    \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	TELEPORT,     \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	SELFDESTRUCT, \
	SWIFT,        \
	REST,         \
	THUNDER_WAVE, \
	EXPLOSION,    \
	SUBSTITUTE,   \
	FLASH
; end

	db BANK(VoltorbPicFront)