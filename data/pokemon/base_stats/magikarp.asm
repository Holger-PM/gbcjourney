	db DEX_MAGIKARP   ; Pokedex ID

; --- Base Stats ---
	db  20            ; HP
	db  10            ; Attack
	db  55            ; Defense
	db  80            ; Speed
	db  20            ; Special

; --- Types & Training ---
	db WATER          ; Type 1
	db WATER          ; Type 2
	db 255            ; Catch rate
	db  20            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/magikarp.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/magikarp.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MagikarpPicFront, MagikarpPicBack

; --- Moves & Growth ---
	db SPLASH, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm
; end

	db BANK(MagikarpPicFront)