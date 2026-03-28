	db DEX_CHARIZARD  ; Pokedex ID

; --- Base Stats ---
    db 78             ; HP
    db 84             ; Attack
    db 78             ; Defense
    db 100            ; Speed
    db 95             ; Special

; --- Types & Training ---
    db FIRE           ; Type 1
    db FLYING         ; Type 2
    db 45             ; Catch rate
    db 209            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/charizard.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/charizard.pic", 0, 1   ; Sprite dimensions
ENDC
    dw CharizardPicFront, CharizardPicBack

; --- Moves & Growth ---
    db SCRATCH, GROWL, NO_MOVE, NO_MOVE              ; Level 1 learnset
    db GROWTH_MEDIUM_SLOW                            ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    MEGA_PUNCH,   \
    SWORDS_DANCE, \
    MEGA_KICK,    \
    TOXIC,        \
    BODY_SLAM,    \
    REST,         \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
    SUBMISSION,   \
    COUNTER,      \
    SEISMIC_TOSS, \
    RAGE,         \
    DRAGON_RAGE,  \
    EARTHQUAKE,   \
    FISSURE,      \
    DIG,          \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    FIRE_BLAST,   \
    SWIFT,        \
    SKULL_BASH,   \
    SUBSTITUTE,   \
    CUT,          \
    FLY,          \
    STRENGTH,     \
    FLAMETHROWER
; end

    db BANK(CharizardPicFront)