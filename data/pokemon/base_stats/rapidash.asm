	db DEX_RAPIDASH   ; Pokedex ID

; --- Base Stats ---
	db  65            ; HP
	db 100            ; Attack
	db  70            ; Defense
	db 115            ; Speed
	db  80            ; Special

; --- Types & Training ---
	db FIRE            ; Type 1
	db FIRE            ; Type 2
	db  60            ; Catch rate
	db 192            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/rapidash.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/rapidash.pic", 0, 1   ; Sprite dimensions
ENDC
	dw RapidashPicFront, RapidashPicBack

; --- Moves & Growth ---
	db EMBER, TAIL_WHIP, NO_MOVE, NO_MOVE          ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	HORN_DRILL,   \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	FIRE_BLAST,   \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	FLAMETHROWER
; end

	db BANK(RapidashPicFront)