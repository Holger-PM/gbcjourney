	db DEX_SEADRA     ; Pokedex ID

; --- Base Stats ---
	db  55            ; HP
	db  65            ; Attack
	db  95            ; Defense
	db  85            ; Speed
	db  95            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db  75            ; Catch rate
	db 155            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/seadra.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/seadra.pic", 0, 1   ; Sprite dimensions
ENDC
	dw SeadraPicFront, SeadraPicBack

; --- Moves & Growth ---
	db BUBBLE, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	HYPER_BEAM,   \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	SURF
; end

	db BANK(SeadraPicFront)
