	db DEX_CHARMELEON ; Pokedex ID

; --- Base Stats ---
    db 58             ; HP
    db 64             ; Attack
    db 58             ; Defense
    db 80             ; Speed
    db 70             ; Special

; --- Types & Training ---
    db FIRE           ; Type 1
    db FIRE           ; Type 2
    db 45             ; Catch rate
    db 142            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/charmeleon.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/charmeleon.pic", 0, 1   ; Sprite dimensions
ENDC
    dw CharmeleonPicFront, CharmeleonPicBack

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
    BIDE,         \
    FIRE_BLAST,   \
    SWIFT,        \
    SKULL_BASH,   \
    REST,         \
    SUBSTITUTE,   \
    CUT,          \
    STRENGTH,     \
    FLAMETHROWER
; end

    db BANK(CharmeleonPicFront)