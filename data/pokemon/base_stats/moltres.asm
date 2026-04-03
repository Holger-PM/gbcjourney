	db DEX_MOLTRES    ; Pokedex ID

; --- Base Stats ---
	db  90            ; HP
	db 100            ; Attack
	db  90            ; Defense
	db  90            ; Speed
	db 125            ; Special

; --- Types & Training ---
	db FIRE           ; Type 1
	db FLYING         ; Type 2
	db   3            ; Catch rate
	db 217            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/moltres.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/moltres.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MoltresPicFront, MoltresPicBack

; --- Moves & Growth ---
	db PECK, EMBER, NO_MOVE, NO_MOVE               ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	RAZOR_WIND,   \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	REST,         \
	HYPER_BEAM,   \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	FIRE_BLAST,   \
	SWIFT,        \
	SKY_ATTACK,   \
	SUBSTITUTE,   \
	FLY,          \
	FLAMETHROWER
; end

	db BANK(MoltresPicFront)
