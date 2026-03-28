	db DEX_MAROWAK    ; Pokedex ID

; --- Base Stats ---
	db  60            ; HP
	db  80            ; Attack
	db 110            ; Defense
	db  45            ; Speed
	db  80            ; Special

; --- Types & Training ---
	db GROUND         ; Type 1
	db GROUND         ; Type 2
	db  75            ; Catch rate
	db 124            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/marowak.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/marowak.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MarowakPicFront, MarowakPicBack

; --- Moves & Growth ---
	db GROWL, NO_MOVE, NO_MOVE, NO_MOVE            ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	MEGA_PUNCH,   \
	MEGA_KICK,    \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	SWORDS_DANCE, \
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
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	FIRE_BLAST,   \
	SKULL_BASH,   \
	REST,         \
	ROCK_SLIDE,   \
	SUBSTITUTE,   \
	CUT,          \
	STRENGTH
; end

	db BANK(MarowakPicFront)
