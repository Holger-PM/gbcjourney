	db DEX_MUK        ; Pokedex ID

; --- Base Stats ---
	db 105            ; HP
	db 105            ; Attack
	db  75            ; Defense
	db  50            ; Speed
	db  85            ; Special

; --- Types & Training ---
	db POISON         ; Type 1
	db POISON         ; Type 2
	db  75            ; Catch rate
	db 157            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/muk.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/muk.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MukPicFront, MukPicBack

; --- Moves & Growth ---
	db POUND, DISABLE, NO_MOVE, NO_MOVE            ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	BODY_SLAM,    \
	HYPER_BEAM,   \
	RAGE,         \
	MEGA_DRAIN,   \
	THUNDERBOLT,  \
	THUNDER,      \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	SELFDESTRUCT, \
	FIRE_BLAST,   \
	EXPLOSION,    \
	REST,         \
	SUBSTITUTE,   \
	FLAMETHROWER
; end

	db BANK(MukPicFront)