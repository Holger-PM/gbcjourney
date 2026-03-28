db DEX_CATERPIE   ; Pokedex ID

; --- Base Stats ---
	db  45            ; HP
	db  30            ; Attack
	db  35            ; Defense
	db  45            ; Speed
	db  20            ; Special

; --- Types & Training ---
	db BUG            ; Type 1
	db BUG            ; Type 2
	db 255            ; Catch rate
	db  53            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/caterpie.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/caterpie.pic", 0, 1   ; Sprite dimensions
ENDC
	dw CaterpiePicFront, CaterpiePicBack

; --- Moves & Growth ---
	db TACKLE, STRING_SHOT, NO_MOVE, NO_MOVE        ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm CUT
; end

	db BANK(CaterpiePicFront)