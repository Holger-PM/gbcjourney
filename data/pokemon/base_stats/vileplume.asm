	db DEX_VILEPLUME  ; Pokedex ID

; --- Base Stats ---
	db  90            ; HP
	db  80            ; Attack
	db  85            ; Defense
	db  50            ; Speed
	db 100            ; Special

; --- Types & Training ---
	db GRASS          ; Type 1
	db POISON         ; Type 2
	db  45            ; Catch rate
	db 184            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/vileplume.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/vileplume.pic", 0, 1   ; Sprite dimensions
ENDC
	dw VileplumePicFront, VileplumePicBack

; --- Moves & Growth ---
	db TACKLE, STUN_SPORE, SLEEP_POWDER, ACID      ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm \
	SWORDS_DANCE, \
	TOXIC,        \
	BODY_SLAM,    \
	TAKE_DOWN,    \
	DOUBLE_EDGE,  \
	HYPER_BEAM,   \
	RAGE,         \
	MEGA_DRAIN,   \
	SOLARBEAM,    \
	MIMIC,        \
	DOUBLE_TEAM,  \
	REFLECT,      \
	BIDE,         \
	REST,         \
	SUBSTITUTE,   \
	CUT
; end

	db BANK(VileplumePicFront)
