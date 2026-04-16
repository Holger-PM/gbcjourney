	db DEX_PONYTA      ; Pokedex ID

; --- Base Stats ---
	db  50             ; HP
	db  85             ; Attack
	db  55             ; Defense
	db 100             ; Speed
	db  65             ; Special

; --- Types & Training ---
	db FIRE            ; Type 1
	db FIRE            ; Type 2
	db 190             ; Catch rate
	db 152             ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/ponyta.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/ponyta.pic", 0, 1   ; Sprite dimensions
ENDC
	dw PonytaPicFront, PonytaPicBack

; --- Moves & Growth ---
	db EMBER, TACKLE, NO_MOVE, NO_MOVE             ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	HORN_DRILL,   \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	SUBSTITUTE,   \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	FIRE_BLAST,   \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	FLAMETHROWER
; end

	db BANK(PonytaPicFront)