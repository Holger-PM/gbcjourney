	db DEX_NIDORAN_M  ; Pokedex ID

; --- Base Stats ---
	db  46            ; HP
	db  57            ; Attack
	db  40            ; Defense
	db  50            ; Speed
	db  40            ; Special

; --- Types & Training ---
	db POISON         ; Type 1
	db POISON         ; Type 2
	db 255 ; 235      ; Catch rate
	db  60            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/nidoranm.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/nidoranm.pic", 0, 1   ; Sprite dimensions
ENDC
	dw NidoranMPicFront, NidoranMPicBack

; --- Moves & Growth ---
	db LEER, TACKLE, NO_MOVE, NO_MOVE              ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	HORN_DRILL,   \
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
	BIDE,         \
	SKULL_BASH,   \
	REST,         \
	SUBSTITUTE
; end

	db BANK(NidoranMPicFront)