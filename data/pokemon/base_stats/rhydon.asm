	db DEX_RHYDON     ; Pokedex ID

; --- Base Stats ---
	db 105            ; HP
	db 130            ; Attack
	db 120            ; Defense
	db  40            ; Speed
	db  45            ; Special

; --- Types & Training ---
	db GROUND         ; Type 1
	db ROCK           ; Type 2
	db  60            ; Catch rate
	db 204            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/rhydon.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/rhydon.pic", 0, 1   ; Sprite dimensions
ENDC
	dw RhydonPicFront, RhydonPicBack

; --- Moves & Growth ---
	db HORN_ATTACK, NO_MOVE, NO_MOVE, NO_MOVE      ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

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
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	FIRE_BLAST,   \
	SKULL_BASH,   \
	REST,         \
	ROCK_SLIDE,   \
	SUBSTITUTE,   \
	SURF,         \
	STRENGTH,     \
	CUT,          \
	FLAMETHROWER
; end

	db BANK(RhydonPicFront)