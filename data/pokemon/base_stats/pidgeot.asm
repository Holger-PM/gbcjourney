	db DEX_PIDGEOT    ; Pokedex ID

; --- Base Stats ---
	db  83            ; HP
	db  80            ; Attack
	db  75            ; Defense
	db  91            ; Speed
	db  70            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db FLYING         ; Type 2
	db  45            ; Catch rate
	db 172            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/pidgeot.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/pidgeot.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PidgeotPicFront, PidgeotPicBack

; --- Moves & Growth ---
	db GUST, NO_MOVE, NO_MOVE, NO_MOVE             ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	RAZOR_WIND,   \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
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

	db BANK(PidgeotPicFront)