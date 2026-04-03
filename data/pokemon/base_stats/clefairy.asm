	db DEX_CLEFAIRY   ; Pokedex ID

; --- Base Stats ---
    db 70             ; HP
    db 45             ; Attack
    db 48             ; Defense
    db 35             ; Speed
    db 60             ; Special

; --- Types & Training ---
    db NORMAL         ; Type 1
    db NORMAL         ; Type 2
    db 150            ; Catch rate
    db 68             ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/clefairy.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/clefairy.pic", 0, 1   ; Sprite dimensions
ENDC
    dw ClefairyPicFront, ClefairyPicBack

; --- Moves & Growth ---
    db POUND, GROWL, NO_MOVE, NO_MOVE               ; Level 1 learnset
    db GROWTH_FAST                                 ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    MEGA_PUNCH,   \
    MEGA_KICK,    \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    SOFTBOILED,   \
    DOUBLE_EDGE,  \
    BUBBLEBEAM,   \
    WATER_GUN,    \
    ICE_BEAM,     \
    BLIZZARD,     \
    SUBMISSION,   \
    COUNTER,      \
    SEISMIC_TOSS, \
    RAGE,         \
    SOLARBEAM,    \
    THUNDERBOLT,  \
    THUNDER,      \
    PSYCHIC_M,    \
    TELEPORT,     \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    METRONOME,    \
    FIRE_BLAST,   \
    SKULL_BASH,   \
    REST,         \
    THUNDER_WAVE, \
    PSYWAVE,      \
    TRI_ATTACK,   \
    SUBSTITUTE,   \
    STRENGTH,     \
    FLASH,        \
    FLAMETHROWER
; end

    db BANK(ClefairyPicFront)