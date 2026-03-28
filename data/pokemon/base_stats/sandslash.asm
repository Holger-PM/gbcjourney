	db DEX_SANDSLASH  ; Pokedex ID

; --- Base Stats ---
	db  75            ; HP
	db 100            ; Attack
	db 110            ; Defense
	db  65            ; Speed
	db  55            ; Special

; --- Types & Training ---
	db GROUND         ; Type 1
	db GROUND         ; Type 2
	db  90            ; Catch rate
	db 163            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/sandslash.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/sandslash.pic", 0, 1   ; Sprite dimensions
ENDC
	dw SandslashPicFront, SandslashPicBack

; --- Moves & Growth ---
	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE          ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	SWORDS_DANCE, \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
	SUBMISSION,   \
	SEISMIC_TOSS, \
	RAGE,         \
	EARTHQUAKE,   \
	FISSURE,      \
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	ROCK_SLIDE,   \
	SUBSTITUTE,   \
	CUT,          \
	STRENGTH
; end

	db BANK(SandslashPicFront)