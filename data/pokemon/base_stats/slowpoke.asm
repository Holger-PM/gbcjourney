	db DEX_SLOWPOKE   ; Pokedex ID

; --- Base Stats ---
	db  90            ; HP
	db  65            ; Attack
	db  65            ; Defense
	db  15            ; Speed
	db  40            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db PSYCHIC_TYPE   ; Type 2
	db 190            ; Catch rate
	db  99            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/slowpoke.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/slowpoke.pic", 0, 1   ; Sprite dimensions
ENDC
	dw SlowpokePicFront, SlowpokePicBack

; --- Moves & Growth ---
	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE            ; Level 1 learnset
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
	PAY_DAY,      \
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
	FLASH
; end

	db BANK(SlowpokePicFront)
