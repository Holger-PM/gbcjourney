	db DEX_ARCANINE   ; Pokedex ID

; --- Base Stats ---
    db 90             ; HP
    db 110            ; Attack
    db 80             ; Defense
    db 95             ; Speed
    db 80             ; Special

; --- Types & Training ---
    db FIRE           ; Type 1
    db FIRE           ; Type 2
    db 75             ; Catch rate
    db 213            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/arcanine.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/arcanine.pic", 0, 1   ; Sprite dimensions
ENDC
    dw ArcaninePicFront, ArcaninePicBack

; --- Moves & Growth ---
    db BITE, ROAR, NO_MOVE, NO_MOVE                 ; Level 1 learnset
    db GROWTH_SLOW                                  ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    REST,         \
    HYPER_BEAM,   \
    RAGE,         \
    DRAGON_RAGE,  \
    DIG,          \
    TELEPORT,     \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    FIRE_BLAST,   \
    SWIFT,        \
    SKULL_BASH,   \
    SUBSTITUTE,   \
    FLAMETHROWER
; end

    db BANK(ArcaninePicFront)