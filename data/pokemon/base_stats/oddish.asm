	db DEX_ODDISH     ; Pokedex ID

; --- Base Stats ---
	db  50            ; HP
	db  50            ; Attack
	db  55            ; Defense
	db  30            ; Speed
	db  75            ; Special

; --- Types & Training ---
	db GRASS          ; Type 1
	db POISON         ; Type 2
	db 255            ; Catch rate
	db  78            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/oddish.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/oddish.pic", 0, 1   ; Sprite dimensions
ENDC
	dw OddishPicFront, OddishPicBack

; --- Moves & Growth ---
	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	SWORDS_DANCE, \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	RAGE,         \
	MEGA_DRAIN,   \
	SOLARBEAM,    \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	REST,         \
	SUBSTITUTE,   \
	CUT
; end

	db BANK(OddishPicFront)