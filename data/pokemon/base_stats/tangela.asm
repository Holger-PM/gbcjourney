	db DEX_TANGELA    ; Pokedex ID

; --- Base Stats ---
	db  65            ; HP
	db  55            ; Attack
	db 115            ; Defense
	db  60            ; Speed
	db 100            ; Special

; --- Types & Training ---
	db GRASS          ; Type 1
	db GRASS          ; Type 2
	db  45            ; Catch rate
	db 166            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/tangela.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/tangela.pic", 0, 1   ; Sprite dimensions
ENDC
	dw TangelaPicFront, TangelaPicBack

; --- Moves & Growth ---
	db CONSTRICT, NO_MOVE, NO_MOVE, NO_MOVE        ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	SWORDS_DANCE, \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
	RAGE,         \
	MEGA_DRAIN,   \
	SOLARBEAM,    \
	MIMIC,        \
	DOUBLE_TEAM,  \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	CUT
; end

	db BANK(TangelaPicFront)
