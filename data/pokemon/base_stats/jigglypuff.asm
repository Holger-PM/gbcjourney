	db DEX_JIGGLYPUFF ; Pokedex ID

; --- Base Stats ---
    db 115            ; HP
    db  45            ; Attack
    db  20            ; Defense
    db  20            ; Speed
    db  25            ; Special

; --- Types & Training ---
    db NORMAL         ; Type 1
    db NORMAL         ; Type 2
    db 170            ; Catch rate
    db  76            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/jigglypuff.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/jigglypuff.pic", 0, 1   ; Sprite dimensions
ENDC
    dw JigglypuffPicFront, JigglypuffPicBack

; --- Moves & Growth ---
    db SING, NO_MOVE, NO_MOVE, NO_MOVE             ; Level 1 learnset
    db GROWTH_FAST                                 ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    MEGA_PUNCH,   \
    MEGA_KICK,    \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    REST,         \
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
    FIRE_BLAST,   \
    SKULL_BASH,   \
    THUNDER_WAVE, \
    PSYWAVE,      \
    TRI_ATTACK,   \
    SUBSTITUTE,   \
    STRENGTH,     \
    FLASH
; end

    db BANK(JigglypuffPicFront)
