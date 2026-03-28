	db DEX_KINGLER    ; Pokedex ID

; --- Base Stats ---
	db  55            ; HP
	db 130            ; Attack
	db 115            ; Defense
	db  75            ; Speed
	db  50            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db  60            ; Catch rate
	db 206            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/kingler.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/kingler.pic", 0, 1   ; Sprite dimensions
ENDC
	dw KinglerPicFront, KinglerPicBack

; --- Moves & Growth ---
	db BUBBLE, LEER, NO_MOVE, NO_MOVE              ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	SWORDS_DANCE, \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	HYPER_BEAM,   \
	RAGE,         \
    MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	REST,         \
	SUBSTITUTE,   \
	CUT,          \
	SURF,         \
	STRENGTH
; end

	db BANK(KinglerPicFront)
