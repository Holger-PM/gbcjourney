	db DEX_JOLTEON    ; Pokedex ID

; --- Base Stats ---
    db  65            ; HP
    db  65            ; Attack
    db  60            ; Defense
    db 130            ; Speed
    db 110            ; Special

; --- Types & Training ---
    db ELECTRIC       ; Type 1
    db ELECTRIC       ; Type 2
    db  45            ; Catch rate
    db 197            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/jolteon.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/jolteon.pic", 0, 1   ; Sprite dimensions
ENDC
    dw JolteonPicFront, JolteonPicBack

; --- Moves & Growth ---
    db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE         ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
    RAGE,         \
    THUNDERBOLT,  \
    THUNDER,      \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    SWIFT,        \
    SKULL_BASH,   \
    REST,         \
    THUNDER_WAVE, \
    SUBSTITUTE,   \
    FLASH
; end

    db BANK(JolteonPicFront)
