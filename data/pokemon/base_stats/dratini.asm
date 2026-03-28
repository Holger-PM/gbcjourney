	db DEX_DRATINI    ; Pokedex ID

; --- Base Stats ---
    db  41            ; HP
    db  64            ; Attack
    db  45            ; Defense
    db  50            ; Speed
    db  50            ; Special

; --- Types & Training ---
    db DRAGON         ; Type 1
    db DRAGON         ; Type 2
    db  45            ; Catch rate
    db  67            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/dratini.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/dratini.pic", 0, 1   ; Sprite dimensions
ENDC
    dw DratiniPicFront, DratiniPicBack

; --- Moves & Growth ---
    db WRAP, LEER, NO_MOVE, NO_MOVE                ; Level 1 learnset
    db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    BUBBLEBEAM,   \
    WATER_GUN,    \
    ICE_BEAM,     \
    BLIZZARD,     \
    RAGE,         \
    DRAGON_RAGE,  \
    THUNDERBOLT,  \
    THUNDER,      \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    FIRE_BLAST,   \
    SWIFT,        \
    SKULL_BASH,   \
    REST,         \
    THUNDER_WAVE, \
    SUBSTITUTE,   \
    SURF,         \
    FLAMETHROWER
; end

    db BANK(DratiniPicFront)
