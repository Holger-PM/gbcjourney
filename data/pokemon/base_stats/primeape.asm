	db DEX_PRIMEAPE   ; Pokedex ID

; --- Base Stats ---
	db  65            ; HP
	db 105            ; Attack
	db  60            ; Defense
	db  95            ; Speed
	db  60            ; Special

; --- Types & Training ---
	db FIGHTING       ; Type 1
	db FIGHTING       ; Type 2
	db  75            ; Catch rate
	db 149            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/primeape.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/primeape.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PrimeapePicFront, PrimeapePicBack

; --- Moves & Growth ---
	db SCRATCH, LEER, NO_MOVE, NO_MOVE              ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	MEGA_PUNCH,   \
	MEGA_KICK,    \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
	PAY_DAY,      \
	SUBMISSION,   \
	COUNTER,      \
	SEISMIC_TOSS, \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	METRONOME,    \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	ROCK_SLIDE,   \
	SUBSTITUTE,   \
	STRENGTH
; end

	db BANK(PrimeapePicFront)