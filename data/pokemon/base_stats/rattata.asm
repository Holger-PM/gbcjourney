	db DEX_RATTATA    ; Pokedex ID

; --- Base Stats ---
	db  30            ; HP
	db  56            ; Attack
	db  35            ; Defense
	db  72            ; Speed
	db  25            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db NORMAL         ; Type 2
	db 255            ; Catch rate
	db  57            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/rattata.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/rattata.pic", 0, 1   ; Sprite dimensions
ENDC
	dw RattataPicFront, RattataPicBack

; --- Moves & Growth ---
	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE         ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	SWORDS_DANCE, \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	BLIZZARD,     \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE
; end

	db BANK(RattataPicFront)