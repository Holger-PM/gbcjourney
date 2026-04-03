	db DEX_TAUROS     ; Pokedex ID

; --- Base Stats ---
	db  75            ; HP
	db 100            ; Attack
	db  95            ; Defense
	db 110            ; Speed
	db  70            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db NORMAL         ; Type 2
	db  45            ; Catch rate
	db 211            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/tauros.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/tauros.pic", 0, 1   ; Sprite dimensions
ENDC
	dw TaurosPicFront, TaurosPicBack

; --- Moves & Growth ---
	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	HORN_DRILL,   \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	ICE_BEAM,     \
	BLIZZARD,     \
	HYPER_BEAM,   \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	EARTHQUAKE,   \
	FISSURE,      \
	MIMIC,        \
	DOUBLE_TEAM,  \
	FIRE_BLAST,   \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	STRENGTH,     \
	FLAMETHROWER
; end

	db BANK(TaurosPicFront)
