	db DEX_GEODUDE    ; Pokedex ID

; --- Base Stats ---
    db  40            ; HP
    db  80            ; Attack
    db 100            ; Defense
    db  20            ; Speed
    db  30            ; Special

; --- Types & Training ---
    db ROCK           ; Type 1
    db GROUND         ; Type 2
    db 255            ; Catch rate
    db  86            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/geodude.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/geodude.pic", 0, 1   ; Sprite dimensions
ENDC
    dw GeodudePicFront, GeodudePicBack

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

    db BANK(GeodudePicFront)
