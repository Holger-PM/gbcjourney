	db DEX_ABRA       ; Pokedex ID

; --- Base Stats ---
	db  25            ; HP
	db  20            ; Attack
	db  15            ; Defense
	db  90            ; Speed
	db 105            ; Special

; --- Types & Training ---
	db PSYCHIC_TYPE   ; Type 1
	db PSYCHIC_TYPE   ; Type 2
	db 200            ; Catch rate
	db  73            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/abra.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/abra.pic", 0, 1   ; Sprite dimensions
ENDC
	dw AbraPicFront, AbraPicBack

; --- Moves & Growth ---
	db TELEPORT, NO_MOVE, NO_MOVE, NO_MOVE         ; Level 1 learnset
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
	PSYCHIC_M,    \
	TELEPORT,     \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	METRONOME,    \
	SKULL_BASH,   \
	REST,         \
	THUNDER_WAVE, \
	PSYWAVE,      \
	TRI_ATTACK,   \
	SUBSTITUTE,   \
	FLASH
; end

	db BANK(AbraPicFront)
