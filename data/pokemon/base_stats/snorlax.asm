	db DEX_SNORLAX    ; Pokedex ID

; --- Base Stats ---
	db 160            ; HP
	db 110            ; Attack
	db  65            ; Defense
	db  30            ; Speed
	db  65            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db NORMAL         ; Type 2
	db  25            ; Catch rate
	db 154            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/snorlax.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/snorlax.pic", 0, 1   ; Sprite dimensions
ENDC
	dw SnorlaxPicFront, SnorlaxPicBack

; --- Moves & Growth ---
	db AMNESIA, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

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
	SOLARBEAM,    \
	THUNDERBOLT,  \
	THUNDER,      \
	EARTHQUAKE,   \
	FISSURE,      \
	PSYCHIC_M,    \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	METRONOME,    \
	SELFDESTRUCT, \
	FIRE_BLAST,   \
	SKULL_BASH,   \
	REST,         \
	ROCK_SLIDE,   \
	PSYWAVE,      \
	SUBSTITUTE,   \
	SURF,         \
	STRENGTH,     \
	FLAMETHROWER
; end

	db BANK(SnorlaxPicFront)