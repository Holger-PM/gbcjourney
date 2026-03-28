	db DEX_MAGNEMITE  ; Pokedex ID

; --- Base Stats ---
	db  25            ; HP
	db  35            ; Attack
	db  70            ; Defense
	db  45            ; Speed
	db  95            ; Special

; --- Types & Training ---
	db ELECTRIC       ; Type 1
	db ELECTRIC       ; Type 2
	db 190            ; Catch rate
	db  89            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/magnemite.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/magnemite.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MagnemitePicFront, MagnemitePicBack

; --- Moves & Growth ---
	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
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
	FLASH
; end

	db BANK(MagnemitePicFront)
