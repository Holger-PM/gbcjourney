	db DEX_METAPOD    ; Pokedex ID

; --- Base Stats ---
	db  50            ; HP
	db  20            ; Attack
	db  55            ; Defense
	db  30            ; Speed
	db  25            ; Special

; --- Types & Training ---
	db BUG            ; Type 1
	db BUG            ; Type 2
	db 120            ; Catch rate
	db  72            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/metapod.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/metapod.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MetapodPicFront, MetapodPicBack

; --- Moves & Growth ---
	db TACKLE, HARDEN, STRING_SHOT, NO_MOVE        ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm
; end

	db BANK(MetapodPicFront)