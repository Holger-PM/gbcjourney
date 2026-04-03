	db DEX_MAGMAR     ; Pokedex ID

; --- Base Stats ---
	db  65            ; HP
	db  95            ; Attack
	db  57            ; Defense
	db  93            ; Speed
	db  95            ; Special

; --- Types & Training ---
	db FIRE           ; Type 1
	db FIRE           ; Type 2
	db  45            ; Catch rate
	db 167            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/magmar.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/magmar.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MagmarPicFront, MagmarPicBack

; --- Moves & Growth ---
	db EMBER, NO_MOVE, NO_MOVE, NO_MOVE            ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	MEGA_PUNCH,   \
	MEGA_KICK,    \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	PSYWAVE,      \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
	SUBMISSION,   \
	COUNTER,      \
	SEISMIC_TOSS, \
	RAGE,         \
	PSYCHIC_M,    \
	TELEPORT,     \
	MIMIC,        \
	DOUBLE_TEAM,  \
	METRONOME,    \
	FIRE_BLAST,   \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	STRENGTH,     \
	FLAMETHROWER
; end

	db BANK(MagmarPicFront)