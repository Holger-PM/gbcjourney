	db DEX_PSYDUCK    ; Pokedex ID

; --- Base Stats ---
	db  50            ; HP
	db  52            ; Attack
	db  48            ; Defense
	db  55            ; Speed
	db  50            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db 190            ; Catch rate
	db  80            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/psyduck.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/psyduck.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PsyduckPicFront, PsyduckPicBack

; --- Moves & Growth ---
	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE          ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	MEGA_PUNCH,   \
	MEGA_KICK,    \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	PAY_DAY,      \
	SUBMISSION,   \
	COUNTER,      \
	SEISMIC_TOSS, \
	RAGE,         \
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	PSYCHIC_M,    \
	PSYWAVE,      \
	SUBSTITUTE,   \
	SURF,         \
	STRENGTH
; end

	db BANK(PsyduckPicFront)