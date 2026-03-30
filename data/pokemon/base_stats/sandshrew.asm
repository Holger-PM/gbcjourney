	db DEX_SANDSHREW  ; Pokedex ID

; --- Base Stats ---
	db  50            ; HP
	db  75            ; Attack
	db  85            ; Defense
	db  40            ; Speed
	db  30            ; Special

; --- Types & Training ---
	db GROUND         ; Type 1
	db GROUND         ; Type 2
	db 195 ; 255      ; Catch rate
	db  93            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/sandshrew.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/sandshrew.pic", 0, 1   ; Sprite dimensions
ENDC
	dw SandshrewPicFront, SandshrewPicBack

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

	db BANK(SandshrewPicFront)