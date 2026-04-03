	db DEX_MR_MIME    ; Pokedex ID

; --- Base Stats ---
	db  40            ; HP
	db  45            ; Attack
	db  65            ; Defense
	db  90            ; Speed
	db 100            ; Special

; --- Types & Training ---
	db PSYCHIC_TYPE   ; Type 1
	db PSYCHIC_TYPE   ; Type 2
	db  45            ; Catch rate
	db 136            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/mr.mime.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/mr.mime.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MrMimePicFront, MrMimePicBack

; --- Moves & Growth ---
	db BARRIER, NO_MOVE, NO_MOVE, NO_MOVE          ; Level 1 learnset
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
	SUBMISSION,   \
	COUNTER,      \
	SEISMIC_TOSS, \
	RAGE,         \
	SOLARBEAM,    \
	THUNDERBOLT,  \
	THUNDER,      \
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
	SUBSTITUTE,   \
	FLASH
; end

	db BANK(MrMimePicFront)
