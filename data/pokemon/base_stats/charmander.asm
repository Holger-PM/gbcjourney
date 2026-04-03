	db DEX_CHARMANDER ; Pokedex ID

; --- Base Stats ---
    db 39             ; HP
    db 52             ; Attack
    db 43             ; Defense
    db 65             ; Speed
    db 55             ; Special

; --- Types & Training ---
    db FIRE           ; Type 1
    db FIRE           ; Type 2
    db 45             ; Catch rate
    db 65             ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/charmander.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/charmander.pic", 0, 1   ; Sprite dimensions
ENDC
    dw CharmanderPicFront, CharmanderPicBack

; --- Moves & Growth ---
    db SCRATCH, GROWL, NO_MOVE, NO_MOVE               ; Level 1 learnset
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
    SUBMISSION,   \
    COUNTER,      \
    SEISMIC_TOSS, \
    RAGE,         \
    DRAGON_RAGE,  \
    DIG,          \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    FIRE_BLAST,   \
    SWIFT,        \
    SKULL_BASH,   \
    SUBSTITUTE,   \
    CUT,          \
    STRENGTH,     \
    FLAMETHROWER
; end

    db BANK(CharmanderPicFront)