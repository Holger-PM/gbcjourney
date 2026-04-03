	db DEX_CLEFABLE   ; Pokedex ID

; --- Base Stats ---
    db 95             ; HP
    db 70             ; Attack
    db 73             ; Defense
    db 60             ; Speed
    db 95             ; Special

; --- Types & Training ---
    db NORMAL         ; Type 1
    db NORMAL         ; Type 2
    db 25             ; Catch rate
    db 129            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/clefable.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/clefable.pic", 0, 1   ; Sprite dimensions
ENDC
    dw ClefablePicFront, ClefablePicBack

; --- Moves & Growth ---
    db SING, METRONOME, GROWL, NO_MOVE              ; Level 1 learnset
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
    HYPER_BEAM,   \
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
    SOFTBOILED,   \
    THUNDER_WAVE, \
    PSYWAVE,      \
    TRI_ATTACK,   \
    SUBSTITUTE,   \
    STRENGTH,     \
    FLASH,        \
    FLAMETHROWER
; end

    db BANK(ClefablePicFront)