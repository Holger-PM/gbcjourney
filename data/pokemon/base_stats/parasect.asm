	db DEX_PARASECT   ; Pokedex ID

; --- Base Stats ---
	db  60            ; HP
	db  95            ; Attack
	db  80            ; Defense
	db  30            ; Speed
	db  80            ; Special

; --- Types & Training ---
	db BUG            ; Type 1
	db GRASS          ; Type 2
	db  75            ; Catch rate
	db 128            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/parasect.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/parasect.pic", 0, 1   ; Sprite dimensions
ENDC
	dw ParasectPicFront, ParasectPicBack

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
	HYPER_BEAM,   \
	RAGE,         \
	MEGA_DRAIN,   \
	SOLARBEAM,    \
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	CUT
; end

	db BANK(ParasectPicFront)