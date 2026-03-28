	db DEX_EXEGGUTOR  ; Pokedex ID

; --- Base Stats ---
    db  95            ; HP
    db  95            ; Attack
    db  85            ; Defense
    db  55            ; Speed
    db 125            ; Special

; --- Types & Training ---
    db GRASS          ; Type 1
    db PSYCHIC_TYPE   ; Type 2
    db  45            ; Catch rate
    db 212            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/exeggutor.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/exeggutor.pic", 0, 1   ; Sprite dimensions
ENDC
    dw ExeggutorPicFront, ExeggutorPicBack

; --- Moves & Growth ---
    db BARRAGE, HYPNOSIS, NO_MOVE, NO_MOVE         ; Level 1 learnset
    db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
    RAGE,         \
    MEGA_DRAIN,   \
    SOLARBEAM,    \
    PSYCHIC_M,    \
    TELEPORT,     \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    SELFDESTRUCT, \
    EGG_BOMB,     \
    SOFTBOILED,   \
    REST,         \
    PSYWAVE,      \
    EXPLOSION,    \
    SUBSTITUTE,   \
    STRENGTH,     \
    DREAM_EATER
; end

    db BANK(ExeggutorPicFront)