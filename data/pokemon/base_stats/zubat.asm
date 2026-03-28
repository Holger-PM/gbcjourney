	db DEX_ZUBAT      ; Pokedex ID

; --- Base Stats ---
	db  40            ; HP
	db  45            ; Attack
	db  35            ; Defense
	db  55            ; Speed
	db  40            ; Special

; --- Types & Training ---
	db POISON         ; Type 1
	db FLYING         ; Type 2
	db 255            ; Catch rate
	db  54            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/zubat.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/zubat.pic", 0, 1   ; Sprite dimensions
ENDC
	dw ZubatPicFront, ZubatPicBack

; --- Moves & Growth ---
	db LEECH_LIFE, NO_MOVE, NO_MOVE, NO_MOVE       ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	RAZOR_WIND,   \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	RAGE,         \
	MEGA_DRAIN,   \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	SWIFT,        \
	REST,         \
	SUBSTITUTE,   \
	FLY
; end

	db BANK(ZubatPicFront)