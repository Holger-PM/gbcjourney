	db DEX_SEAKING    ; Pokedex ID

; --- Base Stats ---
	db  80            ; HP
	db  92            ; Attack
	db  65            ; Defense
	db  68            ; Speed
	db  80            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db  60            ; Catch rate
	db 170            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/seaking.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/seaking.pic", 0, 1   ; Sprite dimensions
ENDC
	dw SeakingPicFront, SeakingPicBack

; --- Moves & Growth ---
	db TAIL_WHIP, BUBBLE, NO_MOVE, NO_MOVE         ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	HORN_DRILL,   \
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
	SURF,         \
	SWORDS_DANCE
; end

	db BANK(SeakingPicFront)