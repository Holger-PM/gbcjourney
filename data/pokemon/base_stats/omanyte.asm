	db DEX_OMANYTE    ; Pokedex ID

; --- Base Stats ---
	db  35            ; HP
	db  40            ; Attack
	db 100            ; Defense
	db  35            ; Speed
	db  90            ; Special

; --- Types & Training ---
	db ROCK           ; Type 1
	db WATER          ; Type 2
	db  45            ; Catch rate
	db 120            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/omanyte.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/omanyte.pic", 0, 1   ; Sprite dimensions
ENDC
	dw OmanytePicFront, OmanytePicBack

; --- Moves & Growth ---
	db WATER_GUN, WITHDRAW, NO_MOVE, NO_MOVE       ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	REST,         \
	SUBSTITUTE,   \
	SURF,         \
	ROCK_SLIDE
; end

	db BANK(OmanytePicFront)