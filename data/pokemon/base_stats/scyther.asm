	db DEX_SCYTHER    ; Pokedex ID

; --- Base Stats ---
	db  70            ; HP
	db 110            ; Attack
	db  80            ; Defense
	db 105            ; Speed
	db  55            ; Special

; --- Types & Training ---
	db BUG            ; Type 1
	db FLYING         ; Type 2
	db  45            ; Catch rate
	db 187            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/scyther.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/scyther.pic", 0, 1   ; Sprite dimensions
ENDC
	dw ScytherPicFront, ScytherPicBack

; --- Moves & Growth ---
	db QUICK_ATTACK, LEER, NO_MOVE, NO_MOVE        ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	SWORDS_DANCE, \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	CUT
; end

	db BANK(ScytherPicFront)
