	db DEX_GROWLITHE  ; Pokedex ID

; --- Base Stats ---
    db  55            ; HP
    db  70            ; Attack
    db  45            ; Defense
    db  60            ; Speed
    db  50            ; Special

; --- Types & Training ---
    db FIRE           ; Type 1
    db FIRE           ; Type 2
    db 190            ; Catch rate
    db  91            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/growlithe.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/growlithe.pic", 0, 1   ; Sprite dimensions
ENDC
    dw GrowlithePicFront, GrowlithePicBack

; --- Moves & Growth ---
    db BITE, ROAR, NO_MOVE, NO_MOVE                ; Level 1 learnset
    db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    RAGE,         \
    SUBSTITUTE,   \
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
    FLAMETHROWER
; end

    db BANK(GrowlithePicFront)
