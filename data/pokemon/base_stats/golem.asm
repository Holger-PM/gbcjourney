	db DEX_GOLEM      ; Pokedex ID

; --- Base Stats ---
    db  80            ; HP
    db 110            ; Attack
    db 130            ; Defense
    db  45            ; Speed
    db  55            ; Special

; --- Types & Training ---
    db ROCK           ; Type 1
    db GROUND         ; Type 2
    db  45            ; Catch rate
    db 177            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/golem.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/golem.pic", 0, 1   ; Sprite dimensions
ENDC
    dw GolemPicFront, GolemPicBack

; --- Moves & Growth ---
    db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
    db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    MEGA_PUNCH,   \
    MEGA_KICK,    \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
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

    db BANK(GolemPicFront)