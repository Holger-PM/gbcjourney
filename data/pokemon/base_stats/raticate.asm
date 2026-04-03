	db DEX_RATICATE   ; Pokedex ID

; --- Base Stats ---
	db  55            ; HP
	db  81            ; Attack
	db  60            ; Defense
	db  97            ; Speed
	db  50            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db NORMAL         ; Type 2
	db  90            ; Catch rate
	db 116            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/raticate.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/raticate.pic", 0, 1   ; Sprite dimensions
ENDC
	dw RaticatePicFront, RaticatePicBack

; --- Moves & Growth ---
	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE         ; Level 1 learnset
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
	THUNDERBOLT,  \
	THUNDER,      \
	DIG,          \
	MIMIC,        \
	DOUBLE_TEAM,  \
	SWIFT,        \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE
; end

	db BANK(RaticatePicFront)