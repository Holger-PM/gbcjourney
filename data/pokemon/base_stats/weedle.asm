	db DEX_WEEDLE     ; Pokedex ID

; --- Base Stats ---
	db  40            ; HP
	db  35            ; Attack
	db  30            ; Defense
	db  50            ; Speed
	db  20            ; Special

; --- Types & Training ---
	db BUG            ; Type 1
	db POISON         ; Type 2
	db 255            ; Catch rate
	db  52            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/weedle.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/weedle.pic", 0, 1   ; Sprite dimensions
ENDC
	dw WeedlePicFront, WeedlePicBack

; --- Moves & Growth ---
	db POISON_STING, STRING_SHOT, NO_MOVE, NO_MOVE ; Level 1 learnset
	db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm
; end

	db BANK(WeedlePicFront)
