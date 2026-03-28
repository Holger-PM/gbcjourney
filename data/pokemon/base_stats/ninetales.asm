	db DEX_NINETALES  ; Pokedex ID

; --- Base Stats ---
	db  73            ; HP
	db  76            ; Attack
	db  75            ; Defense
	db 100            ; Speed
	db 100            ; Special

; --- Types & Training ---
	db FIRE           ; Type 1
	db FIRE           ; Type 2
	db  75            ; Catch rate
	db 178            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/ninetales.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/ninetales.pic", 0, 1   ; Sprite dimensions
ENDC
	dw NinetalesPicFront, NinetalesPicBack

; --- Moves & Growth ---
	db EMBER, TAIL_WHIP, NO_MOVE, NO_MOVE          ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
	REST,         \
	RAGE,         \
	SOLARBEAM,    \
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	FIRE_BLAST,   \
	SWIFT,        \
	SKULL_BASH,   \
	SUBSTITUTE,   \
	FLAMETHROWER
; end

	db BANK(NinetalesPicFront)