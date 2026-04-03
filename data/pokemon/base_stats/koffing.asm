	db DEX_KOFFING    ; Pokedex ID

; --- Base Stats ---
	db  40            ; HP
	db  65            ; Attack
	db  95            ; Defense
	db  35            ; Speed
	db  60            ; Special

; --- Types & Training ---
	db POISON         ; Type 1
	db POISON         ; Type 2
	db 190            ; Catch rate
	db 114            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/koffing.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/koffing.pic", 0, 1   ; Sprite dimensions
ENDC
	dw KoffingPicFront, KoffingPicBack

; --- Moves & Growth ---
	db TACKLE, SMOG, NO_MOVE, NO_MOVE              ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	MIMIC,        \
	SUBSTITUTE,   \
	DOUBLE_TEAM,  \
	SELFDESTRUCT, \
	FIRE_BLAST,   \
	REST,         \
	EXPLOSION
; end

	db BANK(KoffingPicFront)
