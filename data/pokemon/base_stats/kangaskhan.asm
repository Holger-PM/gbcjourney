	db DEX_KANGASKHAN ; Pokedex ID

; --- Base Stats ---
    db 105            ; HP
    db  95            ; Attack
    db  80            ; Defense
    db  90            ; Speed
    db  40            ; Special

; --- Types & Training ---
    db NORMAL         ; Type 1
    db NORMAL         ; Type 2
    db  45            ; Catch rate
    db 175            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/kangaskhan.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/kangaskhan.pic", 0, 1   ; Sprite dimensions
ENDC
    dw KangaskhanPicFront, KangaskhanPicBack

; --- Moves & Growth ---
    db COMET_PUNCH, RAGE, NO_MOVE, NO_MOVE         ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    MEGA_PUNCH,   \
    MEGA_KICK,    \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    BUBBLEBEAM,   \
    WATER_GUN,    \
    ICE_BEAM,     \
    BLIZZARD,     \
    HYPER_BEAM,   \
    SUBMISSION,   \
    COUNTER,      \
    SEISMIC_TOSS, \
    RAGE,         \
    THUNDERBOLT,  \
    THUNDER,      \
    EARTHQUAKE,   \
    FISSURE,      \
    MIMIC,        \
    DOUBLE_TEAM,  \
    BIDE,         \
    FIRE_BLAST,   \
    SKULL_BASH,   \
    REST,         \
    ROCK_SLIDE,   \
    SUBSTITUTE,   \
    SURF,         \
    STRENGTH
; end

    db BANK(KangaskhanPicFront)
