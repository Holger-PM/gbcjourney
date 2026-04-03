	db DEX_HAUNTER    ; Pokedex ID

; --- Base Stats ---
	db  45            ; HP
	db  50            ; Attack
	db  45            ; Defense
	db  95            ; Speed
	db 115            ; Special

; --- Types & Training ---
	db GHOST          ; Type 1
	db POISON         ; Type 2
	db  90            ; Catch rate
	db 126            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/haunter.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/haunter.pic", 0, 1   ; Sprite dimensions
ENDC
	dw HaunterPicFront, HaunterPicBack

; --- Moves & Growth ---
	db LICK, CONFUSE_RAY, NO_MOVE, NO_MOVE         ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	RAGE,         \
	MEGA_DRAIN,   \
	THUNDERBOLT,  \
	THUNDER,      \
	PSYCHIC_M,    \
	MIMIC,        \
	DOUBLE_TEAM,  \
	SELFDESTRUCT, \
	DREAM_EATER,  \
	REST,         \
	PSYWAVE,      \
	EXPLOSION,    \
	SUBSTITUTE
; end

	db BANK(HaunterPicFront)
