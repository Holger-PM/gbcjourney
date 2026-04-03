	db DEX_POLIWRATH  ; Pokedex ID

; --- Base Stats ---
	db  90            ; HP
	db  85            ; Attack
	db  95            ; Defense
	db  70            ; Speed
	db  70            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db FIGHTING       ; Type 2
	db  45            ; Catch rate
	db 185            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/poliwrath.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/poliwrath.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PoliwrathPicFront, PoliwrathPicBack

; --- Moves & Growth ---
	db HYPNOSIS, BODY_SLAM, NO_MOVE, NO_MOVE       ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

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
	EARTHQUAKE,   \
	FISSURE,      \
	PSYCHIC_M,    \
	MIMIC,        \
	DOUBLE_TEAM,  \
	METRONOME,    \
	SKULL_BASH,   \
	DREAM_EATER,  \
	REST,         \
	PSYWAVE,      \
	SUBSTITUTE,   \
	SURF,         \
	STRENGTH
; end

	db BANK(PoliwrathPicFront)