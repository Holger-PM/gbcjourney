	db DEX_POLIWHIRL  ; Pokedex ID

; --- Base Stats ---
	db  65            ; HP
	db  65            ; Attack
	db  65            ; Defense
	db  90            ; Speed
	db  50            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db 120            ; Catch rate
	db 131            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/poliwhirl.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/poliwhirl.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PoliwhirlPicFront, PoliwhirlPicBack

; --- Moves & Growth ---
	db BUBBLE, HYPNOSIS, NO_MOVE, NO_MOVE          ; Level 1 learnset
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
	REST,         \
	PSYWAVE,      \
	SUBSTITUTE,   \
	SURF,         \
	STRENGTH,     \
	DREAM_EATER
; end

	db BANK(PoliwhirlPicFront)