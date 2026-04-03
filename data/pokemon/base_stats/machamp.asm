	db DEX_MACHAMP    ; Pokedex ID

; --- Base Stats ---
	db  90            ; HP
	db 130            ; Attack
	db  80            ; Defense
	db  55            ; Speed
	db  65            ; Special

; --- Types & Training ---
	db FIGHTING       ; Type 1
	db FIGHTING       ; Type 2
	db  45            ; Catch rate
	db 193            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/machamp.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/machamp.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MachampPicFront, MachampPicBack

; --- Moves & Growth ---
	db KARATE_CHOP, LOW_KICK, NO_MOVE, NO_MOVE     ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	MEGA_PUNCH,   \
	MEGA_KICK,    \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
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
	METRONOME,    \
	FIRE_BLAST,   \
	SKULL_BASH,   \
	REST,         \
	ROCK_SLIDE,   \
	SUBSTITUTE,   \
	STRENGTH
; end

	db BANK(MachampPicFront)