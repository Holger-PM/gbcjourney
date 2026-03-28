	db DEX_GYARADOS   ; Pokedex ID

; --- Base Stats ---
    db  95            ; HP
    db 125            ; Attack
    db  79            ; Defense
    db  81            ; Speed
    db 100            ; Special

; --- Types & Training ---
    db WATER          ; Type 1
    db FLYING         ; Type 2
    db  45            ; Catch rate
    db 214            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/gyarados.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/gyarados.pic", 0, 1   ; Sprite dimensions
ENDC
    dw GyaradosPicFront, GyaradosPicBack

; --- Moves & Growth ---
    db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
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
    SKULL_BASH,   \
    REST,         \
    SUBSTITUTE,   \
    FLY,          \
    SURF,         \
    STRENGTH
; end

    db BANK(GyaradosPicFront)