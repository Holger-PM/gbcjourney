	db DEX_MEWTWO     ; Pokedex ID

; --- Base Stats ---
	db 106            ; HP
	db 110            ; Attack
	db  90            ; Defense
	db 130            ; Speed
	db 154            ; Special

; --- Types & Training ---
	db PSYCHIC_TYPE   ; Type 1
	db PSYCHIC_TYPE   ; Type 2
	db   3            ; Catch rate
	db 220            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/mewtwo.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/mewtwo.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MewtwoPicFront, MewtwoPicBack

; --- Moves & Growth ---
	db CONFUSION, DISABLE, SWIFT, PSYCHIC_M        ; Level 1 learnset
	db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
	tmhm MEGA_PUNCH,  MEGA_KICK, TOXIC, BODY_SLAM,  TAKE_DOWN,   PSYWAVE,     \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    TELEPORT,     \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
	     SELFDESTRUCT, FIRE_BLAST,   SKULL_BASH,   REST,         THUNDER_WAVE, \
	     TRI_ATTACK,   SUBSTITUTE,   STRENGTH,     FLASH,        FLAMETHROWER
	; end

	db BANK(MewtwoPicFront)
