	db DEX_RAICHU     ; Pokedex ID

; --- Base Stats ---
	db  60            ; HP
	db  90            ; Attack
	db  55            ; Defense
	db 100            ; Speed
	db  90            ; Special

; --- Types & Training ---
	db ELECTRIC       ; Type 1
	db ELECTRIC       ; Type 2
	db  75            ; Catch rate
	db 122            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/raichu.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/raichu.pic", 0, 1   ; Sprite dimensions
ENDC
	dw RaichuPicFront, RaichuPicBack

; --- Moves & Growth ---
	db THUNDERSHOCK, GROWL, NO_MOVE, NO_MOVE       ; Level 1 learnset
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
	SEISMIC_TOSS, \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	THUNDER_WAVE, \
	SUBSTITUTE,   \
	CUT,          \
	SURF,         \
	FLASH
; end

	db BANK(RaichuPicFront)