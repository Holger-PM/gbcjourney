	db DEX_DRAGONAIR  ; Pokedex ID

; --- Base Stats ---
    db  61            ; HP
    db  84            ; Attack
    db  65            ; Defense
    db  70            ; Speed
    db  70            ; Special

; --- Types & Training ---
    db DRAGON         ; Type 1
    db DRAGON         ; Type 2
    db  27            ; Catch rate
    db 144            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/dragonair.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/dragonair.pic", 0, 1   ; Sprite dimensions
ENDC
    dw DragonairPicFront, DragonairPicBack

; --- Moves & Growth ---
    db WRAP, LEER, NO_MOVE, NO_MOVE                  ; Level 1 learnset
    db GROWTH_SLOW                                   ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    HORN_DRILL,   \
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

    db BANK(DragonairPicFront)