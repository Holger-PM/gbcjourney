	db DEX_VENONAT    ; Pokedex ID

; --- Base Stats ---
	db  60            ; HP
	db  55            ; Attack
	db  50            ; Defense
	db  45            ; Speed
	db  40            ; Special

; --- Types & Training ---
	db BUG            ; Type 1
	db POISON         ; Type 2
	db 190            ; Catch rate
	db  75            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/venonat.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/venonat.pic", 0, 1   ; Sprite dimensions
ENDC
	dw VenonatPicFront, VenonatPicBack

; --- Moves & Growth ---
	db TACKLE, DISABLE, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	TOXIC,        \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	RAGE,         \
	MEGA_DRAIN,   \
	SOLARBEAM,    \
	PSYCHIC_M,    \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	REST,         \
	PSYWAVE,      \
	SUBSTITUTE,   \
	FLASH
; end

	db BANK(VenonatPicFront)
