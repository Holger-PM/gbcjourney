	db DEX_MEW        ; Pokedex ID

; --- Base Stats ---
	db 100            ; HP
	db 100            ; Attack
	db 100            ; Defense
	db 100            ; Speed
	db 100            ; Special

; --- Types & Training ---
	db PSYCHIC_TYPE   ; Type 1
	db PSYCHIC_TYPE   ; Type 2
	db  45            ; Catch rate
	db  64            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/mew.pic", 0, 1 ; Sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/mew.pic", 0, 1   ; Sprite dimensions
ENDC
	dw MewPicFront, MewPicBack

; --- Moves & Growth ---
	db POUND, NO_MOVE, NO_MOVE, NO_MOVE            ; Level 1 learnset
	db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
	tmhm MEGA_PUNCH,   RAZOR_WIND,   SWORDS_DANCE, MEGA_KICK,    PSYWAVE,    \
	     TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     MEGA_DRAIN,   SOLARBEAM,    DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    TELEPORT,     \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      METRONOME,    \
	     SELFDESTRUCT, EGG_BOMB,     FIRE_BLAST,   SWIFT,        SKULL_BASH,   \
	     SOFTBOILED,   DREAM_EATER,  SKY_ATTACK,   REST,         THUNDER_WAVE, \
	     EXPLOSION,    ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE,   CUT,         \
	     FLY,          SURF,         STRENGTH,     FLASH,        FLAMETHROWER
	; end

	db BANK(MewPicFront)
