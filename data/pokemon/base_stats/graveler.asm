	db DEX_GRAVELER   ; Pokedex ID

; --- Base Stats ---
    db  55            ; HP
    db  95            ; Attack
    db 115            ; Defense
    db  35            ; Speed
    db  45            ; Special

; --- Types & Training ---
    db ROCK           ; Type 1
    db GROUND         ; Type 2
    db 120            ; Catch rate
    db 134            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/graveler.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/graveler.pic", 0, 1   ; Sprite dimensions
ENDC
    dw GravelerPicFront, GravelerPicBack

; --- Moves & Growth ---
    db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
    db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    MEGA_PUNCH,   \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    SUBMISSION,   \
    COUNTER,      \
    SEISMIC_TOSS, \
    RAGE,         \
    EARTHQUAKE,   \
    FISSURE,      \
    DIG,          \
    MIMIC,        \
    DOUBLE_TEAM,  \
    BIDE,         \
    METRONOME,    \
    SELFDESTRUCT, \
    FIRE_BLAST,   \
    REST,         \
    EXPLOSION,    \
    ROCK_SLIDE,   \
    SUBSTITUTE,   \
    STRENGTH
; end

    db BANK(GravelerPicFront)