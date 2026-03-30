	db DEX_PIKACHU    ; Pokedex ID

; --- Base Stats ---
	db  35            ; HP
	db  55            ; Attack
	db  30            ; Defense
	db  90            ; Speed
	db  50            ; Special

; --- Types & Training ---
	db ELECTRIC       ; Type 1
	db ELECTRIC       ; Type 2
	db 125 ; 190      ; Catch rate
	db  82            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/pikachu.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/pikachu.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PikachuPicFront, PikachuPicBack

; --- Moves & Growth ---
	db THUNDERSHOCK, GROWL, NO_MOVE, NO_MOVE        ; Level 1 learnset
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
	FLASH
; end

	db BANK(PikachuPicFront)