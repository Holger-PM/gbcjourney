	db DEX_DODRIO     ; Pokedex ID

; --- Base Stats ---
    db  60            ; HP
    db 110            ; Attack
    db  70            ; Defense
    db 110            ; Speed
    db  60            ; Special

; --- Types & Training ---
    db NORMAL         ; Type 1
    db FLYING         ; Type 2
    db 45             ; Catch rate
    db 158            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/dodrio.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/dodrio.pic", 0, 1   ; Sprite dimensions
ENDC
    dw DodrioPicFront, DodrioPicBack

; --- Moves & Growth ---
    db PECK, NO_MOVE, NO_MOVE, NO_MOVE             ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
    RAGE,         \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    SKULL_BASH,   \
    REST,         \
    TRI_ATTACK,   \
    SUBSTITUTE,   \
    FLY,          \
    STRENGTH
; end

    db BANK(DodrioPicFront)