	db DEX_MACHOKE    ; Pokedex ID

; --- Base Stats ---
	db  80            ; HP
	db 100            ; Attack
	db  70            ; Defense
	db  45            ; Speed
	db  50            ; Special

; --- Types & Training ---
	db FIGHTING       ; Type 1
	db FIGHTING       ; Type 2
	db  90            ; Catch rate
	db 146            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/machoke.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/machoke.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MachokePicFront, MachokePicBack

; --- Moves & Growth ---
	db KARATE_CHOP, LOW_KICK, LEER, NO_MOVE        ; Level 1 learnset
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

	db BANK(MachokePicFront)
