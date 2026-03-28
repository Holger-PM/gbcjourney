	db DEX_RHYHORN    ; Pokedex ID

; --- Base Stats ---
	db  80            ; HP
	db  85            ; Attack
	db  95            ; Defense
	db  25            ; Speed
	db  30            ; Special

; --- Types & Training ---
	db GROUND         ; Type 1
	db ROCK           ; Type 2
	db 120            ; Catch rate
	db 135            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/rhyhorn.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/rhyhorn.pic", 0, 1   ; Sprite dimensions
ENDC
	dw RhyhornPicFront, RhyhornPicBack

; --- Moves & Growth ---
	db HORN_ATTACK, NO_MOVE, NO_MOVE, NO_MOVE      ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	HORN_DRILL,   \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	EARTHQUAKE,   \
	FISSURE,      \
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	FIRE_BLAST,   \
	SKULL_BASH,   \
	REST,         \
	ROCK_SLIDE,   \
	SUBSTITUTE,   \
	STRENGTH,     \
	FLAMETHROWER
; end

	db BANK(RhyhornPicFront)