	db DEX_GASTLY     ; Pokedex ID

; --- Base Stats ---
    db  30            ; HP
    db  35            ; Attack
    db  30            ; Defense
    db  80            ; Speed
    db 100            ; Special

; --- Types & Training ---
    db GHOST          ; Type 1
    db POISON         ; Type 2
    db 190            ; Catch rate
    db  95            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/gastly.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/gastly.pic", 0, 1   ; Sprite dimensions
ENDC
    dw GastlyPicFront, GastlyPicBack

; --- Moves & Growth ---
    db LICK, CONFUSE_RAY, NO_MOVE, NO_MOVE         ; Level 1 learnset
    db GROWTH_MEDIUM_SLOW                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    RAGE,         \
    MEGA_DRAIN,   \
    THUNDERBOLT,  \
    THUNDER,      \
    PSYCHIC_M,    \
    MIMIC,        \
    DOUBLE_TEAM,  \
    BIDE,         \
    SELFDESTRUCT, \
    DREAM_EATER,  \
    REST,         \
    PSYWAVE,      \
    EXPLOSION,    \
    SUBSTITUTE
; end

    db BANK(GastlyPicFront)