	db DEX_ZAPDOS     ; Pokedex ID

; --- Base Stats ---
	db  90            ; HP
	db  90            ; Attack
	db  85            ; Defense
	db 100            ; Speed
	db 125            ; Special

; --- Types & Training ---
	db ELECTRIC       ; Type 1
	db FLYING         ; Type 2
	db   3            ; Catch rate
	db 216            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/zapdos.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/zapdos.pic", 0, 1   ; Sprite dimensions
ENDC
	dw ZapdosPicFront, ZapdosPicBack

; --- Moves & Growth ---
	db THUNDERSHOCK, WING_ATTACK, NO_MOVE, NO_MOVE ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	RAZOR_WIND,   \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	SWIFT,        \
	SKY_ATTACK,   \
	REST,         \
	THUNDER_WAVE, \
	SUBSTITUTE,   \
	FLY,          \
	FLASH
; end

	db BANK(ZapdosPicFront)
