	db DEX_SHELLDER   ; Pokedex ID

; --- Base Stats ---
	db  30            ; HP
	db  65            ; Attack
	db 100            ; Defense
	db  40            ; Speed
	db  45            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db 190            ; Catch rate
	db  97            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/shellder.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/shellder.pic", 0, 1   ; Sprite dimensions
ENDC
	dw ShellderPicFront, ShellderPicBack

; --- Moves & Growth ---
	db TACKLE, WITHDRAW, NO_MOVE, NO_MOVE          ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	RAGE,         \
	TELEPORT,     \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	SELFDESTRUCT, \
	SWIFT,        \
	REST,         \
	EXPLOSION,    \
	TRI_ATTACK,   \
	SUBSTITUTE,   \
	SURF
; end

	db BANK(ShellderPicFront)
