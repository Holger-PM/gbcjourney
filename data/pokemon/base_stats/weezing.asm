	db DEX_WEEZING    ; Pokedex ID

; --- Base Stats ---
	db  65            ; HP
	db  90            ; Attack
	db 120            ; Defense
	db  60            ; Speed
	db  85            ; Special

; --- Types & Training ---
	db POISON         ; Type 1
	db POISON         ; Type 2
	db  60            ; Catch rate
	db 173            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/weezing.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/weezing.pic", 0, 1   ; Sprite dimensions
ENDC
	dw WeezingPicFront, WeezingPicBack

; --- Moves & Growth ---
	db TACKLE, SMOG, NO_MOVE, NO_MOVE              ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	HYPER_BEAM,   \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	MIMIC,        \
	DOUBLE_TEAM,  \
	SELFDESTRUCT, \
	FIRE_BLAST,   \
	REST,         \
	EXPLOSION,    \
	SUBSTITUTE,   \
	FLAMETHROWER
; end

	db BANK(WeezingPicFront)
