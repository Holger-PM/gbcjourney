	db DEX_NIDOQUEEN  ; Pokedex ID

; --- Base Stats ---
	db  90            ; HP
	db  82            ; Attack
	db  87            ; Defense
	db  76            ; Speed
	db  75            ; Special

; --- Types & Training ---
	db POISON         ; Type 1
	db GROUND         ; Type 2
	db  45            ; Catch rate
	db 194            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/nidoqueen.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/nidoqueen.pic", 0, 1   ; Sprite dimensions
ENDC
	dw NidoqueenPicFront, NidoqueenPicBack

; --- Moves & Growth ---
	db TACKLE, SCRATCH, DIG, BODY_SLAM             ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	MEGA_PUNCH,   \
	MEGA_KICK,    \
	TOXIC,        \
	HORN_DRILL,   \
	BODY_SLAM,    \
	REST,         \
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
	FIRE_BLAST,   \
	SKULL_BASH,   \
	ROCK_SLIDE,   \
	SUBSTITUTE,   \
	FLAMETHROWER, \
	SURF,         \
	STRENGTH
; end

	db BANK(NidoqueenPicFront)