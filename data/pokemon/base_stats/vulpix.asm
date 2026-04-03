	db DEX_VULPIX     ; Pokedex ID

; --- Base Stats ---
	db  45            ; HP
	db  41            ; Attack
	db  45            ; Defense
	db  75            ; Speed
	db  70            ; Special

; --- Types & Training ---
	db FIRE           ; Type 1
	db FIRE           ; Type 2
	db 125 ; 190      ; Catch rate
	db  63            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/vulpix.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/vulpix.pic", 0, 1   ; Sprite dimensions
ENDC
	dw VulpixPicFront, VulpixPicBack

; --- Moves & Growth ---
	db EMBER, TAIL_WHIP, NO_MOVE, NO_MOVE          ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	RAGE,         \
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	FIRE_BLAST,   \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	FLAMETHROWER
; end

	db BANK(VulpixPicFront)
