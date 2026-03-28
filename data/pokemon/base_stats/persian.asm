	db DEX_PERSIAN    ; Pokedex ID

; --- Base Stats ---
	db  65            ; HP
	db  70            ; Attack
	db  60            ; Defense
	db 115            ; Speed
	db  65            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db NORMAL         ; Type 2
	db  90            ; Catch rate
	db 148            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/persian.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/persian.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PersianPicFront, PersianPicBack

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
	HYPER_BEAM,   \
	PAY_DAY,      \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	CUT
; end

	db BANK(PersianPicFront)