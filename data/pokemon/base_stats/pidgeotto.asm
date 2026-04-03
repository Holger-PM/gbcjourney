	db DEX_PIDGEOTTO  ; Pokedex ID

; --- Base Stats ---
	db  63            ; HP
	db  60            ; Attack
	db  55            ; Defense
	db  71            ; Speed
	db  50            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db FLYING         ; Type 2
	db 120            ; Catch rate
	db 113            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/pidgeotto.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/pidgeotto.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PidgeottoPicFront, PidgeottoPicBack

; --- Moves & Growth ---
	db GUST, NO_MOVE, NO_MOVE, NO_MOVE             ; Level 1 learnset
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

	db BANK(PidgeottoPicFront)