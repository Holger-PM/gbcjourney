	db DEX_LAPRAS     ; Pokedex ID

; --- Base Stats ---
	db 130            ; HP
	db  85            ; Attack
	db  80            ; Defense
	db  60            ; Speed
	db  95            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db ICE            ; Type 2
	db  45            ; Catch rate
	db 219            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/lapras.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/lapras.pic", 0, 1   ; Sprite dimensions
ENDC
	dw LaprasPicFront, LaprasPicBack

; --- Moves & Growth ---
	db WATER_GUN, GROWL, NO_MOVE, NO_MOVE          ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	HORN_DRILL,   \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	HYPER_BEAM,   \
	RAGE,         \
	SOLARBEAM,    \
	DRAGON_RAGE,  \
	THUNDERBOLT,  \
	THUNDER,      \
	PSYCHIC_M,    \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	SKULL_BASH,   \
	REST,         \
	PSYWAVE,      \
	SUBSTITUTE,   \
	SURF,         \
	STRENGTH
; end

	db BANK(LaprasPicFront)