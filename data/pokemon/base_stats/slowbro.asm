	db DEX_SLOWBRO    ; Pokedex ID

; --- Base Stats ---
	db  95            ; HP
	db  75            ; Attack
	db 110            ; Defense
	db  30            ; Speed
	db  80            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db PSYCHIC_TYPE   ; Type 2
	db  75            ; Catch rate
	db 164            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/slowbro.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/slowbro.pic", 0, 1   ; Sprite dimensions
ENDC
	dw SlowbroPicFront, SlowbroPicBack

; --- Moves & Growth ---
	db TACKLE, DISABLE, HEADBUTT, NO_MOVE          ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

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
	PAY_DAY,      \
	SUBMISSION,   \
	COUNTER,      \
	SEISMIC_TOSS, \
	RAGE,         \
	EARTHQUAKE,   \
	FISSURE,      \
	DIG,          \
	PSYCHIC_M,    \
	TELEPORT,     \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	FIRE_BLAST,   \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	THUNDER_WAVE, \
	PSYWAVE,      \
	TRI_ATTACK,   \
	SUBSTITUTE,   \
	SURF,         \
	STRENGTH,     \
	FLASH,        \
	FLAMETHROWER
; end

	db BANK(SlowbroPicFront)