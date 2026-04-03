	db DEX_PINSIR     ; Pokedex ID

; --- Base Stats ---
	db  65            ; HP
	db 125            ; Attack
	db 100            ; Defense
	db  85            ; Speed
	db  55            ; Special

; --- Types & Training ---
	db BUG            ; Type 1
	db BUG            ; Type 2
	db  45            ; Catch rate
	db 200            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/pinsir.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/pinsir.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PinsirPicFront, PinsirPicBack

; --- Moves & Growth ---
	db VICEGRIP, NO_MOVE, NO_MOVE, NO_MOVE         ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	SWORDS_DANCE, \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
	SUBMISSION,   \
	SEISMIC_TOSS, \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REST,         \
	SUBSTITUTE,   \
	CUT,          \
	STRENGTH
; end

	db BANK(PinsirPicFront)
