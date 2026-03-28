	db DEX_GENGAR     ; Pokedex ID

; --- Base Stats ---
    db  60            ; HP
    db  65            ; Attack
    db  60            ; Defense
    db 110            ; Speed
    db 130            ; Special

; --- Types & Training ---
    db GHOST          ; Type 1
    db POISON         ; Type 2
    db  45            ; Catch rate
    db 190            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/gengar.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/gengar.pic", 0, 1   ; Sprite dimensions
ENDC
    dw GengarPicFront, GengarPicBack

; --- Moves & Growth ---
    db LICK, CONFUSE_RAY, NO_MOVE, NO_MOVE         ; Level 1 learnset
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
    MEGA_DRAIN,   \
    THUNDERBOLT,  \
    THUNDER,      \
    PSYCHIC_M,    \
    MIMIC,        \
    DOUBLE_TEAM,  \
    BIDE,         \
    METRONOME,    \
    SELFDESTRUCT, \
    SKULL_BASH,   \
    DREAM_EATER,  \
    REST,         \
    PSYWAVE,      \
    EXPLOSION,    \
    SUBSTITUTE,   \
    STRENGTH
; end

    db BANK(GengarPicFront)