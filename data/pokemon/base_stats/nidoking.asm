	db DEX_NIDOKING   ; Pokedex ID

; --- Base Stats ---
	db  81            ; HP
	db  92            ; Attack
	db  77            ; Defense
	db  85            ; Speed
	db  75            ; Special

; --- Types & Training ---
	db POISON         ; Type 1
	db GROUND         ; Type 2
	db  45            ; Catch rate
	db 195            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/nidoking.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/nidoking.pic", 0, 1   ; Sprite dimensions
ENDC
	dw NidokingPicFront, NidokingPicBack

; --- Moves & Growth ---
	db TACKLE, THRASH, DIG, NO_MOVE                ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	MEGA_PUNCH,   \
	MEGA_KICK,    \
	TOXIC,        \
	HORN_DRILL,   \
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
	THUNDERBOLT,  \
	THUNDER,      \
	EARTHQUAKE,   \
	FISSURE,      \
	MIMIC,        \
	DIG,          \
	DOUBLE_TEAM,  \
	REFLECT,      \
	REST,         \
	FIRE_BLAST,   \
	SKULL_BASH,   \
	ROCK_SLIDE,   \
	SUBSTITUTE,   \
	FLAMETHROWER, \
	SURF,         \
	STRENGTH
; end

	db BANK(NidokingPicFront)