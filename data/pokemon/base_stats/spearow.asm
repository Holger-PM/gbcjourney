	db DEX_SPEAROW    ; Pokedex ID

; --- Base Stats ---
	db  40            ; HP
	db  60            ; Attack
	db  30            ; Defense
	db  70            ; Speed
	db  31            ; Special

; --- Types & Training ---
	db NORMAL         ; Type 1
	db FLYING         ; Type 2
	db 195 ; 255      ; Catch rate
	db  58            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/spearow.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/spearow.pic", 0, 1   ; Sprite dimensions
ENDC
	dw SpearowPicFront, SpearowPicBack

; --- Moves & Growth ---
	db PECK, GROWL, NO_MOVE, NO_MOVE                ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	RAZOR_WIND,   \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	RAGE,         \
	MIMIC,        \
	DOUBLE_TEAM,  \
	BIDE,         \
	SWIFT,        \
	SKY_ATTACK,   \
	REST,         \
	SUBSTITUTE,   \
	FLY
; end

	db BANK(SpearowPicFront)
