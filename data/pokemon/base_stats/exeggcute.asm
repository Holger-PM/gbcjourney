	db DEX_EXEGGCUTE  ; Pokedex ID

; --- Base Stats ---
    db  60            ; HP
    db  40            ; Attack
    db  80            ; Defense
    db  40            ; Speed
    db  60            ; Special

; --- Types & Training ---
    db GRASS          ; Type 1
    db PSYCHIC_TYPE   ; Type 2
    db  90            ; Catch rate
    db  98            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/exeggcute.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/exeggcute.pic", 0, 1   ; Sprite dimensions
ENDC
    dw ExeggcutePicFront, ExeggcutePicBack

; --- Moves & Growth ---
    db BARRAGE, HYPNOSIS, NO_MOVE, NO_MOVE         ; Level 1 learnset
    db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    RAGE,         \
    PSYCHIC_M,    \
    TELEPORT,     \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    SELFDESTRUCT, \
    EGG_BOMB,     \
    REST,         \
    PSYWAVE,      \
    EXPLOSION,    \
    SUBSTITUTE,   \
    SOFTBOILED,   \
    MEGA_DRAIN,   \
    DREAM_EATER
; end

    db BANK(ExeggcutePicFront)
