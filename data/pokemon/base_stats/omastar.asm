	db DEX_OMASTAR    ; Pokedex ID

; --- Base Stats ---
	db  70            ; HP
	db  60            ; Attack
	db 125            ; Defense
	db  55            ; Speed
	db 115            ; Special

; --- Types & Training ---
	db ROCK           ; Type 1
	db WATER          ; Type 2
	db  45            ; Catch rate
	db 199            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/omastar.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/omastar.pic", 0, 1   ; Sprite dimensions
ENDC
	dw OmastarPicFront, OmastarPicBack

; --- Moves & Growth ---
	db WATER_GUN, WITHDRAW, NO_MOVE, NO_MOVE       ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
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
	SUBMISSION,   \
	SEISMIC_TOSS, \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	SURF,         \
	ROCK_SLIDE
; end

	db BANK(OmastarPicFront)