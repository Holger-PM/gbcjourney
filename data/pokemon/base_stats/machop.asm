	db DEX_MACHOP     ; Pokedex ID

; --- Base Stats ---
	db  70            ; HP
	db  80            ; Attack
	db  50            ; Defense
	db  35            ; Speed
	db  35            ; Special

; --- Types & Training ---
	db FIGHTING       ; Type 1
	db FIGHTING       ; Type 2
	db 180            ; Catch rate
	db  88            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/machop.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/machop.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MachopPicFront, MachopPicBack

; --- Moves & Growth ---
	db LOW_KICK, NO_MOVE, NO_MOVE, NO_MOVE         ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	MEGA_PUNCH,   \
	MEGA_KICK,    \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
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
	METRONOME,    \
	FIRE_BLAST,   \
	SKULL_BASH,   \
	REST,         \
	ROCK_SLIDE,   \
	SUBSTITUTE,   \
	STRENGTH
; end

	db BANK(MachopPicFront)
