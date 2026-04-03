	db DEX_KABUTO     ; Pokedex ID

; --- Base Stats ---
    db  30            ; HP
    db  80            ; Attack
    db  90            ; Defense
    db  55            ; Speed
    db  45            ; Special

; --- Types & Training ---
    db ROCK           ; Type 1
    db WATER          ; Type 2
    db  45            ; Catch rate
    db 119            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/kabuto.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/kabuto.pic", 0, 1   ; Sprite dimensions
ENDC
    dw KabutoPicFront, KabutoPicBack

; --- Moves & Growth ---
    db SCRATCH, HARDEN, NO_MOVE, NO_MOVE           ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

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
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    REST,         \
    SUBSTITUTE,   \
    SURF,         \
    ROCK_SLIDE
; end

    db BANK(KabutoPicFront)
