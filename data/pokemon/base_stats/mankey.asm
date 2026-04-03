	db DEX_MANKEY     ; Pokedex ID

; --- Base Stats ---
	db  40            ; HP
	db  80            ; Attack
	db  35            ; Defense
	db  70            ; Speed
	db  35            ; Special

; --- Types & Training ---
	db FIGHTING       ; Type 1
	db FIGHTING       ; Type 2
	db 195 ; 190      ; Catch rate
	db  74            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/mankey.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/mankey.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MankeyPicFront, MankeyPicBack

; --- Moves & Growth ---
	db SCRATCH, LEER, NO_MOVE, NO_MOVE             ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	MEGA_PUNCH,   \
	MEGA_KICK,    \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
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

	db BANK(MankeyPicFront)
