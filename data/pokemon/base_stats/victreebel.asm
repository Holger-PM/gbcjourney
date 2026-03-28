	db DEX_VICTREEBEL ; Pokedex ID

; --- Base Stats ---
	db  80            ; HP
	db 105            ; Attack
	db  65            ; Defense
	db  70            ; Speed
	db 100            ; Special

; --- Types & Training ---
	db GRASS          ; Type 1
	db POISON         ; Type 2
	db  45            ; Catch rate
	db 191            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/victreebel.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/victreebel.pic", 0, 1   ; Sprite dimensions
ENDC
	dw VictreebelPicFront, VictreebelPicBack

; --- Moves & Growth ---
	db STUN_SPORE, SLEEP_POWDER, ACID, RAZOR_LEAF ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

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
	REFLECT,      \
	BIDE,         \
	REST,         \
	SUBSTITUTE,   \
	CUT
; end

	db BANK(VictreebelPicFront)
