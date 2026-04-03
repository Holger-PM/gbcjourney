	db DEX_PIDGEY     ; Pokedex ID

; --- Base Stats ---
	db  40            ; HP
	db  45            ; Attack
	db  40            ; Defense
	db  56            ; Speed
	db  35            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db FLYING         ; Type 2
	db 255            ; Catch rate
	db  55            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/pidgey.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/pidgey.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PidgeyPicFront, PidgeyPicBack

; --- Moves & Growth ---
	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	RAZOR_WIND,   \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	SWIFT,        \
	SKY_ATTACK,   \
	REST,         \
	SUBSTITUTE,   \
	FLY
; end

	db BANK(PidgeyPicFront)