	db DEX_DRAGONITE  ; Pokedex ID

; --- Base Stats ---
    db  91            ; HP
    db 134            ; Attack
    db  95            ; Defense
    db  80            ; Speed
    db 100            ; Special

; --- Types & Training ---
    db DRAGON         ; Type 1
    db FLYING         ; Type 2
    db   9            ; Catch rate
    db 218            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/dragonite.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/dragonite.pic", 0, 1   ; Sprite dimensions
ENDC
    dw DragonitePicFront, DragonitePicBack

; --- Moves & Growth ---
    db WRAP, LEER, NO_MOVE, NO_MOVE                ; Level 1 learnset
    db GROWTH_SLOW                                 ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    RAZOR_WIND,   \
    TOXIC,        \
    HORN_DRILL,   \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    BUBBLEBEAM,   \
    WATER_GUN,    \
    ICE_BEAM,     \
    BLIZZARD,     \
    HYPER_BEAM,   \
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
    STRENGTH,     \
    FLY,          \
    FLAMETHROWER
; end

    db BANK(DragonitePicFront)
