	db DEX_PARAS      ; Pokedex ID

; --- Base Stats ---
	db  35            ; HP
	db  70            ; Attack
	db  55            ; Defense
	db  25            ; Speed
	db  55            ; Special

; --- Types & Training ---
	db BUG            ; Type 1
	db GRASS          ; Type 2
	db 190            ; Catch rate
	db  70            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/paras.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/paras.pic", 0, 1   ; Sprite dimensions
ENDC
	dw ParasPicFront, ParasPicBack

; --- Moves & Growth ---
	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE          ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	SWORDS_DANCE, \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	RAGE,         \
	MEGA_DRAIN,   \
	SOLARBEAM,    \
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	CUT
; end

	db BANK(ParasPicFront)