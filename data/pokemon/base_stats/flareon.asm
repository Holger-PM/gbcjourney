	db DEX_FLAREON    ; Pokedex ID

; --- Base Stats ---
    db  65            ; HP
    db 130            ; Attack
    db  60            ; Defense
    db  65            ; Speed
    db 110            ; Special

; --- Types & Training ---
    db FIRE           ; Type 1
    db FIRE           ; Type 2
    db  45            ; Catch rate
    db 198            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/flareon.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/flareon.pic", 0, 1   ; Sprite dimensions
ENDC
    dw FlareonPicFront, FlareonPicBack

; --- Moves & Growth ---
    db TACKLE, TAIL_WHIP, EMBER, NO_MOVE           ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
    REST,         \
    RAGE,         \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    FIRE_BLAST,   \
    SWIFT,        \
    SKULL_BASH,   \
    SUBSTITUTE,   \
    FLAMETHROWER
; end

    db BANK(FlareonPicFront)