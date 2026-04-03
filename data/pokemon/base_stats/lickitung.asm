	db DEX_LICKITUNG  ; Pokedex ID

; --- Base Stats ---
	db  95            ; HP
	db  70            ; Attack
	db  85            ; Defense
	db  30            ; Speed
	db  75            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db NORMAL         ; Type 2
	db  45            ; Catch rate
	db 127            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/lickitung.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/lickitung.pic", 0, 1   ; Sprite dimensions
ENDC
	dw LickitungPicFront, LickitungPicBack

; --- Moves & Growth ---
	db LICK, SUPERSONIC, NO_MOVE, NO_MOVE          ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	MEGA_PUNCH,   \
	SWORDS_DANCE, \
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
	THUNDERBOLT,  \
	THUNDER,      \
	EARTHQUAKE,   \
	FISSURE,      \
	MIMIC,        \
	DOUBLE_TEAM,  \
	FIRE_BLAST,   \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	CUT,          \
	SURF,         \
	STRENGTH
; end

	db BANK(LickitungPicFront)
