	db DEX_GRIMER     ; Pokedex ID

; --- Base Stats ---
    db  80            ; HP
    db  80            ; Attack
    db  50            ; Defense
    db  25            ; Speed
    db  40            ; Special

; --- Types & Training ---
    db POISON         ; Type 1
    db POISON         ; Type 2
    db 190            ; Catch rate
    db  90            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/grimer.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/grimer.pic", 0, 1   ; Sprite dimensions
ENDC
    dw GrimerPicFront, GrimerPicBack

; --- Moves & Growth ---
    db POUND, DISABLE, NO_MOVE, NO_MOVE            ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    RAGE,         \
    MEGA_DRAIN,   \
    THUNDERBOLT,  \
    REST,         \
    THUNDER,      \
    MIMIC,        \
    DOUBLE_TEAM,  \
    BIDE,         \
    SELFDESTRUCT, \
    FIRE_BLAST,   \
    EXPLOSION,    \
    SUBSTITUTE
; end

    db BANK(GrimerPicFront)