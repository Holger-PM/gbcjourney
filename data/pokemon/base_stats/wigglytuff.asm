	db DEX_WIGGLYTUFF ; Pokedex ID

; --- Base Stats ---
	db 140            ; HP
	db  70            ; Attack
	db  55            ; Defense
	db  45            ; Speed
	db  85            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db NORMAL         ; Type 2
	db  50            ; Catch rate
	db 109            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/wigglytuff.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/wigglytuff.pic", 0, 1   ; Sprite dimensions
ENDC
	dw WigglytuffPicFront, WigglytuffPicBack

; --- Moves & Growth ---
	db SING, DOUBLESLAP, NO_MOVE, NO_MOVE          ; Level 1 learnset
	db GROWTH_FAST                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	MEGA_PUNCH,   \
	MEGA_KICK,    \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	HYPER_BEAM,   \
	SUBMISSION,   \
	COUNTER,      \
	SEISMIC_TOSS, \
	RAGE,         \
	SOLARBEAM,    \
	THUNDERBOLT,  \
	THUNDER,      \
	PSYCHIC_M,    \
	TELEPORT,     \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	FIRE_BLAST,   \
	SKULL_BASH,   \
	REST,         \
	THUNDER_WAVE, \
	PSYWAVE,      \
	TRI_ATTACK,   \
	SUBSTITUTE,   \
	STRENGTH,     \
	FLASH,        \
	FLAMETHROWER
; end

	db BANK(WigglytuffPicFront)