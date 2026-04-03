	db DEX_MEOWTH     ; Pokedex ID

; --- Base Stats ---
	db  40            ; HP
	db  45            ; Attack
	db  35            ; Defense
	db  90            ; Speed
	db  40            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db NORMAL         ; Type 2
	db 255            ; Catch rate
	db  69            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/meowth.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/meowth.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MeowthPicFront, MeowthPicBack

; --- Moves & Growth ---
	db SCRATCH, GROWL, NO_MOVE, NO_MOVE            ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	PAY_DAY,      \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	MIMIC,        \
	DOUBLE_TEAM,  \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	CUT
; end

	db BANK(MeowthPicFront)
