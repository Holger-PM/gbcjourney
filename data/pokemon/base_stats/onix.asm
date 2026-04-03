	db DEX_ONIX       ; Pokedex ID

; --- Base Stats ---
	db  75            ; HP
	db  80            ; Attack
	db 160            ; Defense
	db  85            ; Speed
	db  65            ; Special

; --- Types & Training ---
	db ROCK           ; Type 1
	db GROUND         ; Type 2
	db  45            ; Catch rate
	db 108            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/onix.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/onix.pic", 0, 1   ; Sprite dimensions
ENDC
	dw OnixPicFront, OnixPicBack

; --- Moves & Growth ---
	db TACKLE, SCREECH, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	RAGE,         \
	EARTHQUAKE,   \
	FISSURE,      \
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	STONE_GUARD,  \
	SELFDESTRUCT, \
	SKULL_BASH,   \
	REST,         \
	EXPLOSION,    \
	ROCK_SLIDE,   \
	SUBSTITUTE,   \
	STRENGTH
; end

	db BANK(OnixPicFront)