	db DEX_TENTACOOL  ; Pokedex ID

; --- Base Stats ---
	db  40            ; HP
	db  40            ; Attack
	db  35            ; Defense
	db  70            ; Speed
	db 100            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db POISON         ; Type 2
	db 190            ; Catch rate
	db 105            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/tentacool.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/tentacool.pic", 0, 1   ; Sprite dimensions
ENDC
	dw TentacoolPicFront, TentacoolPicBack

; --- Moves & Growth ---
	db POISON_STING, BUBBLE, NO_MOVE, NO_MOVE      ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	SWORDS_DANCE, \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BUBBLEBEAM,   \
	WATER_GUN,    \
	ICE_BEAM,     \
	BLIZZARD,     \
	RAGE,         \
	MEGA_DRAIN,   \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE,   \
	CUT,          \
	SURF
; end

	db BANK(TentacoolPicFront)