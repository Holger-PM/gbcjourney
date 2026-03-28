	db DEX_WEEPINBELL ; Pokedex ID

; --- Base Stats ---
	db  65            ; HP
	db  90            ; Attack
	db  50            ; Defense
	db  55            ; Speed
	db  85            ; Special

; --- Types & Training ---
	db GRASS          ; Type 1
	db POISON         ; Type 2
	db 120            ; Catch rate
	db 151            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/weepinbell.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/weepinbell.pic", 0, 1   ; Sprite dimensions
ENDC
	dw WeepinbellPicFront, WeepinbellPicBack

; --- Moves & Growth ---
	db GROWTH, POISONPOWDER, VINE_WHIP, NO_MOVE    ; Level 1 learnset
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

	db BANK(WeepinbellPicFront)