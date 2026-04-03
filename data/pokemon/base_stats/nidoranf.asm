	db DEX_NIDORAN_F  ; Pokedex ID

; --- Base Stats ---
	db  55            ; HP
	db  47            ; Attack
	db  52            ; Defense
	db  41            ; Speed
	db  40            ; Special

; --- Types & Training ---
	db POISON         ; Type 1
	db POISON         ; Type 2
	db 255 ; 235      ; Catch rate
	db  59            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/nidoranf.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/nidoranf.pic", 0, 1   ; Sprite dimensions
ENDC
	dw NidoranFPicFront, NidoranFPicBack

; --- Moves & Growth ---
	db GROWL, TACKLE, NO_MOVE, NO_MOVE              ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	BLIZZARD,     \
	RAGE,         \
	THUNDERBOLT,  \
	THUNDER,      \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE
; end

	db BANK(NidoranFPicFront)
