	db DEX_GOLDUCK    ; Pokedex ID

; --- Base Stats ---
    db  80            ; HP
    db  82            ; Attack
    db  78            ; Defense
    db  85            ; Speed
    db  80            ; Special

; --- Types & Training ---
    db WATER          ; Type 1
    db WATER          ; Type 2
    db  75            ; Catch rate
    db 174            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/golduck.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/golduck.pic", 0, 1   ; Sprite dimensions
ENDC
    dw GolduckPicFront, GolduckPicBack

; --- Moves & Growth ---
    db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE          ; Level 1 learnset
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
    PAY_DAY,      \
    SUBMISSION,   \
    COUNTER,      \
    SEISMIC_TOSS, \
    RAGE,         \
    DIG,          \
    MIMIC,        \
    DOUBLE_TEAM,  \
    BIDE,         \
    SWIFT,        \
    SKULL_BASH,   \
    REST,         \
    SUBSTITUTE,   \
    SURF,         \
    STRENGTH,     \
    PSYCHIC_M,    \
    PSYWAVE
; end

    db BANK(GolduckPicFront)